
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct scmi_info {int handle; int dev; struct idr rx_idr; struct idr tx_idr; } ;
struct mbox_client {int tx_block; int knows_txdone; int * tx_prepare; int rx_callback; struct device* dev; } ;
struct scmi_chan_info {int * handle; int chan; int payload; struct mbox_client cl; struct device* dev; } ;
struct resource {int start; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int resource_size_t ;


 int EADDRNOTAVAIL ;
 int EINVAL ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SCMI_PROTOCOL_BASE ;
 int dev_err (struct device*,char*,...) ;
 int devm_ioremap (int ,int ,int ) ;
 struct scmi_chan_info* devm_kzalloc (int ,int,int ) ;
 int idr_alloc (struct idr*,struct scmi_chan_info*,int,int,int ) ;
 struct scmi_chan_info* idr_find (struct idr*,int ) ;
 int mbox_request_channel (struct mbox_client*,int) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int resource_size (struct resource*) ;
 scalar_t__ scmi_mailbox_check (struct device_node*,int) ;
 int scmi_rx_callback ;
 int * scmi_tx_prepare ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int scmi_mbox_chan_setup(struct scmi_info *info, struct device *dev,
    int prot_id, bool tx)
{
 int ret, idx;
 struct resource res;
 resource_size_t size;
 struct device_node *shmem, *np = dev->of_node;
 struct scmi_chan_info *cinfo;
 struct mbox_client *cl;
 struct idr *idr;
 const char *desc = tx ? "Tx" : "Rx";


 idx = tx ? 0 : 1;
 idr = tx ? &info->tx_idr : &info->rx_idr;

 if (scmi_mailbox_check(np, idx)) {
  cinfo = idr_find(idr, SCMI_PROTOCOL_BASE);
  if (unlikely(!cinfo))
   return -EINVAL;
  goto idr_alloc;
 }

 cinfo = devm_kzalloc(info->dev, sizeof(*cinfo), GFP_KERNEL);
 if (!cinfo)
  return -ENOMEM;

 cinfo->dev = dev;

 cl = &cinfo->cl;
 cl->dev = dev;
 cl->rx_callback = scmi_rx_callback;
 cl->tx_prepare = tx ? scmi_tx_prepare : ((void*)0);
 cl->tx_block = 0;
 cl->knows_txdone = tx;

 shmem = of_parse_phandle(np, "shmem", idx);
 ret = of_address_to_resource(shmem, 0, &res);
 of_node_put(shmem);
 if (ret) {
  dev_err(dev, "failed to get SCMI %s payload memory\n", desc);
  return ret;
 }

 size = resource_size(&res);
 cinfo->payload = devm_ioremap(info->dev, res.start, size);
 if (!cinfo->payload) {
  dev_err(dev, "failed to ioremap SCMI %s payload\n", desc);
  return -EADDRNOTAVAIL;
 }

 cinfo->chan = mbox_request_channel(cl, idx);
 if (IS_ERR(cinfo->chan)) {
  ret = PTR_ERR(cinfo->chan);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to request SCMI %s mailbox\n",
    desc);
  return ret;
 }

idr_alloc:
 ret = idr_alloc(idr, cinfo, prot_id, prot_id + 1, GFP_KERNEL);
 if (ret != prot_id) {
  dev_err(dev, "unable to allocate SCMI idr slot err %d\n", ret);
  return ret;
 }

 cinfo->handle = &info->handle;
 return 0;
}

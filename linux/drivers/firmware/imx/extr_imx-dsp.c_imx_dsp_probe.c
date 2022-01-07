
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int parent; } ;
struct platform_device {struct device dev; } ;
struct mbox_client {int tx_block; int knows_txdone; int rx_callback; struct device* dev; } ;
struct imx_dsp_ipc {struct imx_dsp_chan* chans; struct device* dev; } ;
struct imx_dsp_chan {int idx; int ch; struct imx_dsp_ipc* ipc; struct mbox_client cl; } ;


 int DSP_MU_CHAN_NUM ;
 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*,char*) ;
 int dev_err (struct device*,char*,char*,int) ;
 int dev_info (struct device*,char*) ;
 int dev_set_drvdata (struct device*,struct imx_dsp_ipc*) ;
 int device_set_of_node_from_dev (struct device*,int ) ;
 struct imx_dsp_ipc* devm_kzalloc (struct device*,int,int ) ;
 int devm_of_platform_populate (struct device*) ;
 int imx_dsp_handle_rx ;
 char* kasprintf (int ,char*,int) ;
 int kfree (char*) ;
 int mbox_free_channel (int ) ;
 int mbox_request_channel_byname (struct mbox_client*,char*) ;

__attribute__((used)) static int imx_dsp_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct imx_dsp_ipc *dsp_ipc;
 struct imx_dsp_chan *dsp_chan;
 struct mbox_client *cl;
 char *chan_name;
 int ret;
 int i, j;

 device_set_of_node_from_dev(&pdev->dev, pdev->dev.parent);

 dsp_ipc = devm_kzalloc(dev, sizeof(*dsp_ipc), GFP_KERNEL);
 if (!dsp_ipc)
  return -ENOMEM;

 for (i = 0; i < DSP_MU_CHAN_NUM; i++) {
  if (i < 2)
   chan_name = kasprintf(GFP_KERNEL, "txdb%d", i);
  else
   chan_name = kasprintf(GFP_KERNEL, "rxdb%d", i - 2);

  if (!chan_name)
   return -ENOMEM;

  dsp_chan = &dsp_ipc->chans[i];
  cl = &dsp_chan->cl;
  cl->dev = dev;
  cl->tx_block = 0;
  cl->knows_txdone = 1;
  cl->rx_callback = imx_dsp_handle_rx;

  dsp_chan->ipc = dsp_ipc;
  dsp_chan->idx = i % 2;
  dsp_chan->ch = mbox_request_channel_byname(cl, chan_name);
  if (IS_ERR(dsp_chan->ch)) {
   ret = PTR_ERR(dsp_chan->ch);
   if (ret != -EPROBE_DEFER)
    dev_err(dev, "Failed to request mbox chan %s ret %d\n",
     chan_name, ret);
   goto out;
  }

  dev_dbg(dev, "request mbox chan %s\n", chan_name);

  kfree(chan_name);
 }

 dsp_ipc->dev = dev;

 dev_set_drvdata(dev, dsp_ipc);

 dev_info(dev, "NXP i.MX DSP IPC initialized\n");

 return devm_of_platform_populate(dev);
out:
 kfree(chan_name);
 for (j = 0; j < i; j++) {
  dsp_chan = &dsp_ipc->chans[j];
  mbox_free_channel(dsp_chan->ch);
 }

 return ret;
}

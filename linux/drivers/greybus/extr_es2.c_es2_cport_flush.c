
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {TYPE_1__* usb_dev; } ;
struct device {int dummy; } ;
struct arpc_cport_flush_req {int cport_id; } ;
typedef int req ;
struct TYPE_2__ {struct device dev; } ;


 int ARPC_TYPE_CPORT_FLUSH ;
 int ES2_ARPC_CPORT_TIMEOUT ;
 int arpc_sync (struct es2_ap_dev*,int ,struct arpc_cport_flush_req*,int,int *,int ) ;
 int cpu_to_le16 (int ) ;
 int dev_err (struct device*,char*,int ,int) ;
 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;

__attribute__((used)) static int es2_cport_flush(struct gb_host_device *hd, u16 cport_id)
{
 struct es2_ap_dev *es2 = hd_to_es2(hd);
 struct device *dev = &es2->usb_dev->dev;
 struct arpc_cport_flush_req req;
 int ret;

 req.cport_id = cpu_to_le16(cport_id);
 ret = arpc_sync(es2, ARPC_TYPE_CPORT_FLUSH, &req, sizeof(req),
   ((void*)0), ES2_ARPC_CPORT_TIMEOUT);
 if (ret) {
  dev_err(dev, "failed to flush cport %u: %d\n", cport_id, ret);
  return ret;
 }

 return 0;
}

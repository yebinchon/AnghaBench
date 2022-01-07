
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned int u16 ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {TYPE_1__* usb_dev; } ;
struct device {int dummy; } ;
struct arpc_cport_shutdown_req {int phase; void* timeout; void* cport_id; } ;
typedef int req ;
struct TYPE_2__ {struct device dev; } ;


 int ARPC_TYPE_CPORT_SHUTDOWN ;
 int EINVAL ;
 scalar_t__ ES2_ARPC_CPORT_TIMEOUT ;
 unsigned int U16_MAX ;
 int arpc_sync (struct es2_ap_dev*,int ,struct arpc_cport_shutdown_req*,int,int*,scalar_t__) ;
 void* cpu_to_le16 (unsigned int) ;
 int dev_err (struct device*,char*,unsigned int,int,int) ;
 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;

__attribute__((used)) static int es2_cport_shutdown(struct gb_host_device *hd, u16 cport_id,
         u8 phase, unsigned int timeout)
{
 struct es2_ap_dev *es2 = hd_to_es2(hd);
 struct device *dev = &es2->usb_dev->dev;
 struct arpc_cport_shutdown_req req;
 int result;
 int ret;

 if (timeout > U16_MAX)
  return -EINVAL;

 req.cport_id = cpu_to_le16(cport_id);
 req.timeout = cpu_to_le16(timeout);
 req.phase = phase;
 ret = arpc_sync(es2, ARPC_TYPE_CPORT_SHUTDOWN, &req, sizeof(req),
   &result, ES2_ARPC_CPORT_TIMEOUT + timeout);
 if (ret) {
  dev_err(dev, "failed to send shutdown over cport %u: %d (%d)\n",
   cport_id, ret, result);
  return ret;
 }

 return 0;
}

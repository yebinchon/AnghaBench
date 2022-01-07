
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct amd_mp2_dev {scalar_t__ mmio; } ;
struct TYPE_4__ {int status; int response; int length; } ;
struct TYPE_5__ {TYPE_1__ r; } ;
struct amd_i2c_common {int reqcmd; int cmd_success; TYPE_3__* msg; TYPE_2__ eventval; struct amd_mp2_dev* mp2_dev; } ;
typedef enum status_type { ____Placeholder_status_type } status_type ;
typedef enum response_type { ____Placeholder_response_type } response_type ;
struct TYPE_6__ {int buf; } ;


 scalar_t__ AMD_C2P_MSG2 ;
 int amd_mp2_pci_check_rw_event (struct amd_i2c_common*) ;
 int command_failed ;
 int command_success ;
 int dev_err (int ,char*,...) ;
 int i2c_busdisable_complete ;
 int i2c_busdisable_failed ;
 int i2c_busenable_complete ;
 int i2c_busenable_failed ;



 int i2c_readcomplete_event ;
 int i2c_readfail_event ;

 int i2c_writecomplete_event ;
 int i2c_writefail_event ;
 int memcpy_fromio (int ,scalar_t__,int) ;
 int ndev_dev (struct amd_mp2_dev*) ;

__attribute__((used)) static void __amd_mp2_process_event(struct amd_i2c_common *i2c_common)
{
 struct amd_mp2_dev *privdata = i2c_common->mp2_dev;
 enum status_type sts = i2c_common->eventval.r.status;
 enum response_type res = i2c_common->eventval.r.response;
 int len = i2c_common->eventval.r.length;

 if (res != command_success) {
  if (res != command_failed)
   dev_err(ndev_dev(privdata), "invalid response to i2c command!\n");
  return;
 }

 switch (i2c_common->reqcmd) {
 case 129:
  if (sts == i2c_readcomplete_event) {
   amd_mp2_pci_check_rw_event(i2c_common);
   if (len <= 32)
    memcpy_fromio(i2c_common->msg->buf,
           privdata->mmio + AMD_C2P_MSG2,
           len);
  } else if (sts != i2c_readfail_event) {
   dev_err(ndev_dev(privdata),
    "invalid i2c status after read (%d)!\n", sts);
  }
  break;
 case 128:
  if (sts == i2c_writecomplete_event)
   amd_mp2_pci_check_rw_event(i2c_common);
  else if (sts != i2c_writefail_event)
   dev_err(ndev_dev(privdata),
    "invalid i2c status after write (%d)!\n", sts);
  break;
 case 130:
  if (sts == i2c_busenable_complete)
   i2c_common->cmd_success = 1;
  else if (sts != i2c_busenable_failed)
   dev_err(ndev_dev(privdata),
    "invalid i2c status after bus enable (%d)!\n",
    sts);
  break;
 case 131:
  if (sts == i2c_busdisable_complete)
   i2c_common->cmd_success = 1;
  else if (sts != i2c_busdisable_failed)
   dev_err(ndev_dev(privdata),
    "invalid i2c status after bus disable (%d)!\n",
    sts);
  break;
 default:
  break;
 }
}

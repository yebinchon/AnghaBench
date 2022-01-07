
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pidff_device {TYPE_2__* block_load; int hid; } ;
struct input_dev {int ffbit; } ;
struct TYPE_4__ {scalar_t__* value; TYPE_1__* field; } ;
struct TYPE_3__ {scalar_t__ logical_minimum; } ;


 int FF_AUTOCENTER ;
 size_t PID_EFFECT_BLOCK_INDEX ;
 int hid_err (int ,char*) ;
 int hid_notice (int ,char*) ;
 int pidff_autocenter (struct pidff_device*,int) ;
 int pidff_erase_pid (struct pidff_device*,scalar_t__) ;
 int pidff_request_effect_upload (struct pidff_device*,int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int pidff_check_autocenter(struct pidff_device *pidff,
      struct input_dev *dev)
{
 int error;
 error = pidff_request_effect_upload(pidff, 1);
 if (error) {
  hid_err(pidff->hid, "upload request failed\n");
  return error;
 }

 if (pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0] ==
     pidff->block_load[PID_EFFECT_BLOCK_INDEX].field->logical_minimum + 1) {
  pidff_autocenter(pidff, 0xffff);
  set_bit(FF_AUTOCENTER, dev->ffbit);
 } else {
  hid_notice(pidff->hid,
      "device has unknown autocenter control method\n");
 }

 pidff_erase_pid(pidff,
   pidff->block_load[PID_EFFECT_BLOCK_INDEX].value[0]);

 return 0;

}

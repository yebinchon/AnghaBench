
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dev; } ;
struct roccat_common2_control {int value; } ;


 int EINVAL ;
 int ROCCAT_COMMON_COMMAND_CONTROL ;





 int dev_err (int *,char*,int) ;
 int msleep (int) ;
 int roccat_common2_receive (struct usb_device*,int ,struct roccat_common2_control*,int) ;

__attribute__((used)) static int roccat_common2_receive_control_status(struct usb_device *usb_dev)
{
 int retval;
 struct roccat_common2_control control;

 do {
  msleep(50);
  retval = roccat_common2_receive(usb_dev,
    ROCCAT_COMMON_COMMAND_CONTROL,
    &control, sizeof(struct roccat_common2_control));

  if (retval)
   return retval;

  switch (control.value) {
  case 128:
   return 0;
  case 132:
   msleep(500);
   continue;
  case 129:
  case 131:
  case 130:
   return -EINVAL;
  default:
   dev_err(&usb_dev->dev,
     "roccat_common2_receive_control_status: "
     "unknown response value 0x%x\n",
     control.value);
   return -EINVAL;
  }

 } while (1);
}

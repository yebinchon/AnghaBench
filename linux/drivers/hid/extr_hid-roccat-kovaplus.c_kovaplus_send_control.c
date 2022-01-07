
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;
struct roccat_common2_control {int value; int request; int command; } ;
typedef enum kovaplus_control_requests { ____Placeholder_kovaplus_control_requests } kovaplus_control_requests ;


 int EINVAL ;
 int KOVAPLUS_CONTROL_REQUEST_PROFILE_BUTTONS ;
 int KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS ;
 int ROCCAT_COMMON_COMMAND_CONTROL ;
 int roccat_common2_send (struct usb_device*,int ,struct roccat_common2_control*,int) ;

__attribute__((used)) static int kovaplus_send_control(struct usb_device *usb_dev, uint value,
  enum kovaplus_control_requests request)
{
 int retval;
 struct roccat_common2_control control;

 if ((request == KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS ||
   request == KOVAPLUS_CONTROL_REQUEST_PROFILE_BUTTONS) &&
   value > 4)
  return -EINVAL;

 control.command = ROCCAT_COMMON_COMMAND_CONTROL;
 control.value = value;
 control.request = request;

 retval = roccat_common2_send(usb_dev, ROCCAT_COMMON_COMMAND_CONTROL,
   &control, sizeof(struct roccat_common2_control));

 return retval;
}

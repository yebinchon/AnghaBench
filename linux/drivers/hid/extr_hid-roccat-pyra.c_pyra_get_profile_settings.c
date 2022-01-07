
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct pyra_profile_settings {int dummy; } ;


 int PYRA_COMMAND_PROFILE_SETTINGS ;
 int PYRA_CONTROL_REQUEST_PROFILE_SETTINGS ;
 int PYRA_SIZE_PROFILE_SETTINGS ;
 int pyra_send_control (struct usb_device*,int,int ) ;
 int roccat_common2_receive (struct usb_device*,int ,struct pyra_profile_settings*,int ) ;

__attribute__((used)) static int pyra_get_profile_settings(struct usb_device *usb_dev,
  struct pyra_profile_settings *buf, int number)
{
 int retval;
 retval = pyra_send_control(usb_dev, number,
   PYRA_CONTROL_REQUEST_PROFILE_SETTINGS);
 if (retval)
  return retval;
 return roccat_common2_receive(usb_dev, PYRA_COMMAND_PROFILE_SETTINGS,
   buf, PYRA_SIZE_PROFILE_SETTINGS);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;
struct kovaplus_profile_settings {int dummy; } ;


 int KOVAPLUS_COMMAND_PROFILE_SETTINGS ;
 int KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS ;
 int KOVAPLUS_SIZE_PROFILE_SETTINGS ;
 int kovaplus_select_profile (struct usb_device*,int ,int ) ;
 int roccat_common2_receive (struct usb_device*,int ,struct kovaplus_profile_settings*,int ) ;

__attribute__((used)) static int kovaplus_get_profile_settings(struct usb_device *usb_dev,
  struct kovaplus_profile_settings *buf, uint number)
{
 int retval;

 retval = kovaplus_select_profile(usb_dev, number,
   KOVAPLUS_CONTROL_REQUEST_PROFILE_SETTINGS);
 if (retval)
  return retval;

 return roccat_common2_receive(usb_dev, KOVAPLUS_COMMAND_PROFILE_SETTINGS,
   buf, KOVAPLUS_SIZE_PROFILE_SETTINGS);
}

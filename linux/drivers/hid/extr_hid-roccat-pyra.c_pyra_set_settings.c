
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct pyra_settings {int dummy; } ;


 int PYRA_COMMAND_SETTINGS ;
 int PYRA_SIZE_SETTINGS ;
 int roccat_common2_send_with_status (struct usb_device*,int ,struct pyra_settings const*,int ) ;

__attribute__((used)) static int pyra_set_settings(struct usb_device *usb_dev,
  struct pyra_settings const *settings)
{
 return roccat_common2_send_with_status(usb_dev,
   PYRA_COMMAND_SETTINGS, settings,
   PYRA_SIZE_SETTINGS);
}

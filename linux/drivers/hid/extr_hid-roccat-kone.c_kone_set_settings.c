
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct kone_settings {int dummy; } ;


 int kone_check_write (struct usb_device*) ;
 int kone_command_settings ;
 int kone_send (struct usb_device*,int ,struct kone_settings const*,int) ;

__attribute__((used)) static int kone_set_settings(struct usb_device *usb_dev,
  struct kone_settings const *settings)
{
 int retval;

 retval = kone_send(usb_dev, kone_command_settings,
   settings, sizeof(struct kone_settings));
 if (retval)
  return retval;
 return kone_check_write(usb_dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct kone_settings {int dummy; } ;


 int kone_command_settings ;
 int kone_receive (struct usb_device*,int ,struct kone_settings*,int) ;

__attribute__((used)) static int kone_get_settings(struct usb_device *usb_dev,
  struct kone_settings *buf)
{
 return kone_receive(usb_dev, kone_command_settings, buf,
   sizeof(struct kone_settings));
}

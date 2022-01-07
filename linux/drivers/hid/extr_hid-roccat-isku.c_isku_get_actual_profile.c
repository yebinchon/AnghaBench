
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct isku_actual_profile {int actual_profile; } ;


 int ISKU_COMMAND_ACTUAL_PROFILE ;
 int isku_receive (struct usb_device*,int ,struct isku_actual_profile*,int) ;

__attribute__((used)) static int isku_get_actual_profile(struct usb_device *usb_dev)
{
 struct isku_actual_profile buf;
 int retval;

 retval = isku_receive(usb_dev, ISKU_COMMAND_ACTUAL_PROFILE,
   &buf, sizeof(struct isku_actual_profile));
 return retval ? retval : buf.actual_profile;
}

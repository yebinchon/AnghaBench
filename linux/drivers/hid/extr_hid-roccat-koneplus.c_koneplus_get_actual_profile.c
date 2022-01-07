
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct koneplus_actual_profile {int actual_profile; } ;


 int KONEPLUS_COMMAND_ACTUAL_PROFILE ;
 int KONEPLUS_SIZE_ACTUAL_PROFILE ;
 int roccat_common2_receive (struct usb_device*,int ,struct koneplus_actual_profile*,int ) ;

__attribute__((used)) static int koneplus_get_actual_profile(struct usb_device *usb_dev)
{
 struct koneplus_actual_profile buf;
 int retval;

 retval = roccat_common2_receive(usb_dev, KONEPLUS_COMMAND_ACTUAL_PROFILE,
   &buf, KONEPLUS_SIZE_ACTUAL_PROFILE);

 return retval ? retval : buf.actual_profile;
}

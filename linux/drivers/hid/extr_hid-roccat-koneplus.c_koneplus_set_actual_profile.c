
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct koneplus_actual_profile {int actual_profile; int size; int command; } ;


 int KONEPLUS_COMMAND_ACTUAL_PROFILE ;
 int KONEPLUS_SIZE_ACTUAL_PROFILE ;
 int roccat_common2_send_with_status (struct usb_device*,int ,struct koneplus_actual_profile*,int ) ;

__attribute__((used)) static int koneplus_set_actual_profile(struct usb_device *usb_dev,
  int new_profile)
{
 struct koneplus_actual_profile buf;

 buf.command = KONEPLUS_COMMAND_ACTUAL_PROFILE;
 buf.size = KONEPLUS_SIZE_ACTUAL_PROFILE;
 buf.actual_profile = new_profile;

 return roccat_common2_send_with_status(usb_dev,
   KONEPLUS_COMMAND_ACTUAL_PROFILE,
   &buf, KONEPLUS_SIZE_ACTUAL_PROFILE);
}

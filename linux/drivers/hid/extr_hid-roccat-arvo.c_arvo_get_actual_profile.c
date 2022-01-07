
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct arvo_actual_profile {int actual_profile; } ;


 int ARVO_COMMAND_ACTUAL_PROFILE ;
 int roccat_common2_receive (struct usb_device*,int ,struct arvo_actual_profile*,int) ;

__attribute__((used)) static int arvo_get_actual_profile(struct usb_device *usb_dev)
{
 struct arvo_actual_profile temp_buf;
 int retval;

 retval = roccat_common2_receive(usb_dev, ARVO_COMMAND_ACTUAL_PROFILE,
   &temp_buf, sizeof(struct arvo_actual_profile));

 if (retval)
  return retval;

 return temp_buf.actual_profile;
}

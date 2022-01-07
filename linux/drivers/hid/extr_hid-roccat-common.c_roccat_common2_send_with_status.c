
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;


 int msleep (int) ;
 int roccat_common2_receive_control_status (struct usb_device*) ;
 int roccat_common2_send (struct usb_device*,int ,void const*,int ) ;

int roccat_common2_send_with_status(struct usb_device *usb_dev,
  uint command, void const *buf, uint size)
{
 int retval;

 retval = roccat_common2_send(usb_dev, command, buf, size);
 if (retval)
  return retval;

 msleep(100);

 return roccat_common2_receive_control_status(usb_dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct usb_device {int dummy; } ;


 int roccat_common2_receive (struct usb_device*,int ,void*,int ) ;

__attribute__((used)) static int isku_receive(struct usb_device *usb_dev, uint command,
  void *buf, uint size)
{
 return roccat_common2_receive(usb_dev, command, buf, size);
}

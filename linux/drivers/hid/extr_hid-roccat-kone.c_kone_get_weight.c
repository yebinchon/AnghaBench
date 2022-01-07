
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_device {int dummy; } ;


 int kone_command_weight ;
 int kone_receive (struct usb_device*,int ,scalar_t__*,int) ;

__attribute__((used)) static int kone_get_weight(struct usb_device *usb_dev, int *result)
{
 int retval;
 uint8_t data;

 retval = kone_receive(usb_dev, kone_command_weight, &data, 1);

 if (retval)
  return retval;

 *result = (int)data;
 return 0;
}

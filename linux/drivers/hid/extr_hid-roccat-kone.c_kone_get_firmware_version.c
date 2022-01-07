
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_device {int dummy; } ;


 int kone_command_firmware_version ;
 int kone_receive (struct usb_device*,int ,int *,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int kone_get_firmware_version(struct usb_device *usb_dev, int *result)
{
 int retval;
 uint16_t data;

 retval = kone_receive(usb_dev, kone_command_firmware_version,
   &data, 2);
 if (retval)
  return retval;

 *result = le16_to_cpu(data);
 return 0;
}

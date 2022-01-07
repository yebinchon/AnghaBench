
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int kone_command_calibrate ;
 int kone_send (struct usb_device*,int ,unsigned char*,int) ;

__attribute__((used)) static int kone_tcu_command(struct usb_device *usb_dev, int number)
{
 unsigned char value;

 value = number;
 return kone_send(usb_dev, kone_command_calibrate, &value, 1);
}

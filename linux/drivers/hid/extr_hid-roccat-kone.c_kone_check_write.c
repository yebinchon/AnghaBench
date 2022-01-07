
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {int dev; } ;


 int EIO ;
 int dev_err (int *,char*,int) ;
 int kone_command_confirm_write ;
 int kone_receive (struct usb_device*,int ,int*,int) ;
 int msleep (int) ;

__attribute__((used)) static int kone_check_write(struct usb_device *usb_dev)
{
 int retval;
 uint8_t data;

 do {




  msleep(80);

  retval = kone_receive(usb_dev,
    kone_command_confirm_write, &data, 1);
  if (retval)
   return retval;






 } while (data == 3);

 if (data == 1)
  return 0;


 dev_err(&usb_dev->dev, "got retval %d when checking write\n", data);
 return -EIO;
}

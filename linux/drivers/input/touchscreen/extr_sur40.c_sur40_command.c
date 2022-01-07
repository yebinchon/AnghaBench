
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct sur40_state {int usbdev; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int,int ,void*,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int sur40_command(struct sur40_state *dev,
    u8 command, u16 index, void *buffer, u16 size)
{
 return usb_control_msg(dev->usbdev, usb_rcvctrlpipe(dev->usbdev, 0),
          command,
          USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
          0x00, index, buffer, size, 1000);
}

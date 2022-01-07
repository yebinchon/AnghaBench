
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int EINVAL ;
 int ELO_GET_SMARTSET_RESPONSE ;
 int ELO_SEND_SMARTSET_COMMAND ;
 int ELO_SMARTSET_CMD_TIMEOUT ;
 int ELO_SMARTSET_PACKET_SIZE ;
 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,unsigned int,int,int,int ,int ,void*,int ,int ) ;
 unsigned int usb_rcvctrlpipe (struct usb_device*,int ) ;
 unsigned int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int elo_smartset_send_get(struct usb_device *dev, u8 command,
  void *data)
{
 unsigned int pipe;
 u8 dir;

 if (command == ELO_SEND_SMARTSET_COMMAND) {
  pipe = usb_sndctrlpipe(dev, 0);
  dir = USB_DIR_OUT;
 } else if (command == ELO_GET_SMARTSET_RESPONSE) {
  pipe = usb_rcvctrlpipe(dev, 0);
  dir = USB_DIR_IN;
 } else
  return -EINVAL;

 return usb_control_msg(dev, pipe, command,
   dir | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, 0, data, ELO_SMARTSET_PACKET_SIZE,
   ELO_SMARTSET_CMD_TIMEOUT);
}

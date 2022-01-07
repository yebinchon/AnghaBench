
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int ELO_FLUSH_SMARTSET_RESPONSES ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int ,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int elo_flush_smartset_responses(struct usb_device *dev)
{
 return usb_control_msg(dev, usb_sndctrlpipe(dev, 0),
   ELO_FLUSH_SMARTSET_RESPONSES,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   0, 0, ((void*)0), 0, USB_CTRL_SET_TIMEOUT);
}

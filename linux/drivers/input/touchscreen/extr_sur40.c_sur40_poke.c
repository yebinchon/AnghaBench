
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sur40_state {int usbdev; } ;


 int SUR40_POKE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int msleep (int) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int sur40_poke(struct sur40_state *dev, u8 offset, u8 value)
{
 int result;
 u8 index = 0x96;

 result = usb_control_msg(dev->usbdev, usb_sndctrlpipe(dev->usbdev, 0),
  SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
  0x32, index, ((void*)0), 0, 1000);
 if (result < 0)
  goto error;
 msleep(5);

 result = usb_control_msg(dev->usbdev, usb_sndctrlpipe(dev->usbdev, 0),
  SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
  0x72, offset, ((void*)0), 0, 1000);
 if (result < 0)
  goto error;
 msleep(5);

 result = usb_control_msg(dev->usbdev, usb_sndctrlpipe(dev->usbdev, 0),
  SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
  0xb2, value, ((void*)0), 0, 1000);
 if (result < 0)
  goto error;
 msleep(5);

error:
 return result;
}

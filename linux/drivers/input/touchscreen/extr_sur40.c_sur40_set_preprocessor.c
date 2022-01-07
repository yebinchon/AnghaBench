
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sur40_state {int usbdev; } ;


 int ERANGE ;
 int SUR40_POKE ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int msleep (int) ;
 int usb_control_msg (int ,int ,int ,int,int,int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int sur40_set_preprocessor(struct sur40_state *dev, u8 value)
{
 u8 setting_07[2] = { 0x01, 0x00 };
 u8 setting_17[2] = { 0x85, 0x80 };
 int result;

 if (value > 1)
  return -ERANGE;

 result = usb_control_msg(dev->usbdev, usb_sndctrlpipe(dev->usbdev, 0),
  SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
  0x07, setting_07[value], ((void*)0), 0, 1000);
 if (result < 0)
  goto error;
 msleep(5);

 result = usb_control_msg(dev->usbdev, usb_sndctrlpipe(dev->usbdev, 0),
  SUR40_POKE, USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
  0x17, setting_17[value], ((void*)0), 0, 1000);
 if (result < 0)
  goto error;
 msleep(5);

error:
 return result;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct udl_device {int udev; } ;
typedef int set_def_chn ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NR_USB_REQUEST_CHANNEL ;
 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int kfree (void*) ;
 void* kmemdup (int const*,int,int ) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int udl_select_std_channel(struct udl_device *udl)
{
 int ret;
 static const u8 set_def_chn[] = {0x57, 0xCD, 0xDC, 0xA7,
      0x1C, 0x88, 0x5E, 0x15,
      0x60, 0xFE, 0xC6, 0x97,
      0x16, 0x3D, 0x47, 0xF2};
 void *sendbuf;

 sendbuf = kmemdup(set_def_chn, sizeof(set_def_chn), GFP_KERNEL);
 if (!sendbuf)
  return -ENOMEM;

 ret = usb_control_msg(udl->udev,
         usb_sndctrlpipe(udl->udev, 0),
         NR_USB_REQUEST_CHANNEL,
         (USB_DIR_OUT | USB_TYPE_VENDOR), 0, 0,
         sendbuf, sizeof(set_def_chn),
         USB_CTRL_SET_TIMEOUT);
 kfree(sendbuf);
 return ret < 0 ? ret : 0;
}

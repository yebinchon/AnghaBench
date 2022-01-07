
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct yld_ctl_packet {scalar_t__ sum; } ;
struct yealink_dev {int udev; } ;


 int USB_CTRL_SET_TIMEOUT ;
 int USB_DIR_OUT ;
 int USB_PKT_LEN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_SET_CONFIGURATION ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (int ,int ,int ,int,int,int,struct yld_ctl_packet*,int,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int yealink_cmd(struct yealink_dev *yld, struct yld_ctl_packet *p)
{
 u8 *buf = (u8 *)p;
 int i;
 u8 sum = 0;

 for(i=0; i<USB_PKT_LEN-1; i++)
  sum -= buf[i];
 p->sum = sum;
 return usb_control_msg(yld->udev,
   usb_sndctrlpipe(yld->udev, 0),
   USB_REQ_SET_CONFIGURATION,
   USB_TYPE_CLASS | USB_RECIP_INTERFACE | USB_DIR_OUT,
   0x200, 3,
   p, sizeof(*p),
   USB_CTRL_SET_TIMEOUT);
}

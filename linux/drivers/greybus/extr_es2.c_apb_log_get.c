
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es2_ap_dev {int apb_log_fifo; int usb_dev; } ;


 int APB1_LOG_MSG_SIZE ;
 int ES2_USB_CTRL_TIMEOUT ;
 int GB_APB_REQUEST_LOG ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int kfifo_in (int *,char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int,char*,int ,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static void apb_log_get(struct es2_ap_dev *es2, char *buf)
{
 int retval;

 do {
  retval = usb_control_msg(es2->usb_dev,
      usb_rcvctrlpipe(es2->usb_dev, 0),
      GB_APB_REQUEST_LOG,
      USB_DIR_IN | USB_TYPE_VENDOR |
      USB_RECIP_INTERFACE,
      0x00, 0x00,
      buf,
      APB1_LOG_MSG_SIZE,
      ES2_USB_CTRL_TIMEOUT);
  if (retval > 0)
   kfifo_in(&es2->apb_log_fifo, buf, retval);
 } while (retval > 0);
}

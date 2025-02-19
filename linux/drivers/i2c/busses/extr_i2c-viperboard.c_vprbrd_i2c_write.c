
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int last; int chan; int spi; int len1; int len2; int addr; int cmd; } ;
struct vprbrd_i2c_write_msg {int data; TYPE_1__ header; } ;
struct vprbrd_i2c_write_hdr {int dummy; } ;
struct vprbrd {int usb_dev; scalar_t__ buf; } ;
struct i2c_msg {int len; int buf; } ;


 int EREMOTEIO ;
 int VPRBRD_EP_OUT ;
 int VPRBRD_I2C_CMD_WRITE ;
 int VPRBRD_USB_TIMEOUT_MS ;
 int cpu_to_le16 (int) ;
 int memcpy (int ,int,int) ;
 int usb_bulk_msg (int ,int ,struct vprbrd_i2c_write_msg*,int,int*,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int vprbrd_i2c_write(struct vprbrd *vb, struct i2c_msg *msg)
{
 int ret, bytes_actual;
 u16 remain_len, bytes_xfer,
  start = 0x0000;
 struct vprbrd_i2c_write_msg *wmsg =
  (struct vprbrd_i2c_write_msg *)vb->buf;

 remain_len = msg->len;
 wmsg->header.cmd = VPRBRD_I2C_CMD_WRITE;
 wmsg->header.last = 0x00;
 wmsg->header.chan = 0x00;
 wmsg->header.spi = 0x0000;
 while (remain_len > 0) {
  wmsg->header.addr = cpu_to_le16(start + 0x4000);
  if (remain_len > 503) {
   wmsg->header.len1 = 0xff;
   wmsg->header.len2 = 0xf8;
   remain_len -= 503;
   bytes_xfer = 503 + sizeof(struct vprbrd_i2c_write_hdr);
   start += 503;
  } else if (remain_len > 255) {
   wmsg->header.len1 = 0xff;
   wmsg->header.len2 = (remain_len - 255);
   bytes_xfer = remain_len +
    sizeof(struct vprbrd_i2c_write_hdr);
   remain_len = 0;
  } else {
   wmsg->header.len1 = remain_len;
   wmsg->header.len2 = 0x00;
   bytes_xfer = remain_len +
    sizeof(struct vprbrd_i2c_write_hdr);
   remain_len = 0;
  }
  memcpy(wmsg->data, msg->buf + start,
   bytes_xfer - sizeof(struct vprbrd_i2c_write_hdr));

  ret = usb_bulk_msg(vb->usb_dev,
   usb_sndbulkpipe(vb->usb_dev,
   VPRBRD_EP_OUT), wmsg,
   bytes_xfer, &bytes_actual, VPRBRD_USB_TIMEOUT_MS);
  if ((ret < 0) || (bytes_xfer != bytes_actual))
   return -EREMOTEIO;
 }
 return 0;
}

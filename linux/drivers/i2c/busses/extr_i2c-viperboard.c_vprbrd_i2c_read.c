
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int len0; int len1; int len2; int len3; int len4; int len5; void* tf2; void* tf1; void* addr; int cmd; } ;
struct vprbrd_i2c_read_msg {TYPE_1__ header; } ;
struct vprbrd {int usb_dev; scalar_t__ buf; } ;
struct i2c_msg {int len; int buf; } ;


 int VPRBRD_I2C_CMD_READ ;
 void* cpu_to_le16 (int) ;
 int memcpy (int,struct vprbrd_i2c_read_msg*,int) ;
 int vprbrd_i2c_receive (int ,struct vprbrd_i2c_read_msg*,int) ;

__attribute__((used)) static int vprbrd_i2c_read(struct vprbrd *vb, struct i2c_msg *msg)
{
 int ret;
 u16 remain_len, len1, len2, start = 0x0000;
 struct vprbrd_i2c_read_msg *rmsg =
  (struct vprbrd_i2c_read_msg *)vb->buf;

 remain_len = msg->len;
 rmsg->header.cmd = VPRBRD_I2C_CMD_READ;
 while (remain_len > 0) {
  rmsg->header.addr = cpu_to_le16(start + 0x4000);
  if (remain_len <= 255) {
   len1 = remain_len;
   len2 = 0x00;
   rmsg->header.len0 = remain_len;
   rmsg->header.len1 = 0x00;
   rmsg->header.len2 = 0x00;
   rmsg->header.len3 = 0x00;
   rmsg->header.len4 = 0x00;
   rmsg->header.len5 = 0x00;
   remain_len = 0;
  } else if (remain_len <= 510) {
   len1 = remain_len;
   len2 = 0x00;
   rmsg->header.len0 = remain_len - 255;
   rmsg->header.len1 = 0xff;
   rmsg->header.len2 = 0x00;
   rmsg->header.len3 = 0x00;
   rmsg->header.len4 = 0x00;
   rmsg->header.len5 = 0x00;
   remain_len = 0;
  } else if (remain_len <= 512) {
   len1 = remain_len;
   len2 = 0x00;
   rmsg->header.len0 = remain_len - 510;
   rmsg->header.len1 = 0xff;
   rmsg->header.len2 = 0xff;
   rmsg->header.len3 = 0x00;
   rmsg->header.len4 = 0x00;
   rmsg->header.len5 = 0x00;
   remain_len = 0;
  } else if (remain_len <= 767) {
   len1 = 512;
   len2 = remain_len - 512;
   rmsg->header.len0 = 0x02;
   rmsg->header.len1 = 0xff;
   rmsg->header.len2 = 0xff;
   rmsg->header.len3 = remain_len - 512;
   rmsg->header.len4 = 0x00;
   rmsg->header.len5 = 0x00;
   remain_len = 0;
  } else if (remain_len <= 1022) {
   len1 = 512;
   len2 = remain_len - 512;
   rmsg->header.len0 = 0x02;
   rmsg->header.len1 = 0xff;
   rmsg->header.len2 = 0xff;
   rmsg->header.len3 = remain_len - 767;
   rmsg->header.len4 = 0xff;
   rmsg->header.len5 = 0x00;
   remain_len = 0;
  } else if (remain_len <= 1024) {
   len1 = 512;
   len2 = remain_len - 512;
   rmsg->header.len0 = 0x02;
   rmsg->header.len1 = 0xff;
   rmsg->header.len2 = 0xff;
   rmsg->header.len3 = remain_len - 1022;
   rmsg->header.len4 = 0xff;
   rmsg->header.len5 = 0xff;
   remain_len = 0;
  } else {
   len1 = 512;
   len2 = 512;
   rmsg->header.len0 = 0x02;
   rmsg->header.len1 = 0xff;
   rmsg->header.len2 = 0xff;
   rmsg->header.len3 = 0x02;
   rmsg->header.len4 = 0xff;
   rmsg->header.len5 = 0xff;
   remain_len -= 1024;
   start += 1024;
  }
  rmsg->header.tf1 = cpu_to_le16(len1);
  rmsg->header.tf2 = cpu_to_le16(len2);


  ret = vprbrd_i2c_receive(vb->usb_dev, rmsg, len1);
  if (ret < 0)
   return ret;

  memcpy(msg->buf + start, rmsg, len1);


  if (len2 > 0) {
   ret = vprbrd_i2c_receive(vb->usb_dev, rmsg, len2);
   if (ret < 0)
    return ret;

   memcpy(msg->buf + start + 512, rmsg, len2);
  }
 }
 return 0;
}

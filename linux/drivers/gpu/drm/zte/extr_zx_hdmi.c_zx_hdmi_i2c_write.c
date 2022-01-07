
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zx_hdmi {int dummy; } ;
struct i2c_msg {int len; int addr; int* buf; } ;


 int DDC_ADDR ;
 int DDC_SEGMENT_ADDR ;
 int EINVAL ;
 int ZX_DDC_ADDR ;
 int ZX_DDC_OFFSET ;
 int ZX_DDC_SEGM ;
 int hdmi_writeb (struct zx_hdmi*,int ,int) ;

__attribute__((used)) static int zx_hdmi_i2c_write(struct zx_hdmi *hdmi, struct i2c_msg *msg)
{




 if ((msg->len != 1) ||
     ((msg->addr != DDC_ADDR) && (msg->addr != DDC_SEGMENT_ADDR)))
  return -EINVAL;

 if (msg->addr == DDC_SEGMENT_ADDR)
  hdmi_writeb(hdmi, ZX_DDC_SEGM, msg->addr << 1);
 else if (msg->addr == DDC_ADDR)
  hdmi_writeb(hdmi, ZX_DDC_ADDR, msg->addr << 1);

 hdmi_writeb(hdmi, ZX_DDC_OFFSET, msg->buf[0]);

 return 0;
}

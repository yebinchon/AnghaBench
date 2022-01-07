
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rk3066_hdmi {TYPE_1__* i2c; } ;
struct i2c_msg {int len; int * buf; } ;
struct TYPE_2__ {int stat; int cmpltn; } ;


 int EAGAIN ;
 int HDMI_DDC_READ_FIFO_ADDR ;
 int HDMI_INTR_EDID_ERR ;
 int HZ ;
 int hdmi_readb (struct rk3066_hdmi*,int ) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static int rk3066_hdmi_i2c_read(struct rk3066_hdmi *hdmi, struct i2c_msg *msgs)
{
 int length = msgs->len;
 u8 *buf = msgs->buf;
 int ret;

 ret = wait_for_completion_timeout(&hdmi->i2c->cmpltn, HZ / 10);
 if (!ret || hdmi->i2c->stat & HDMI_INTR_EDID_ERR)
  return -EAGAIN;

 while (length--)
  *buf++ = hdmi_readb(hdmi, HDMI_DDC_READ_FIFO_ADDR);

 return 0;
}

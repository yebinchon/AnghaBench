
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rk3066_hdmi {TYPE_1__* i2c; } ;
struct i2c_msg {int len; scalar_t__ addr; int * buf; } ;
struct TYPE_2__ {int segment_addr; int ddc_addr; int cmpltn; } ;


 scalar_t__ DDC_ADDR ;
 scalar_t__ DDC_SEGMENT_ADDR ;
 int EINVAL ;
 int HDMI_EDID_SEGMENT_POINTER ;
 int HDMI_EDID_WORD_ADDR ;
 int hdmi_writeb (struct rk3066_hdmi*,int ,int ) ;
 int reinit_completion (int *) ;

__attribute__((used)) static int rk3066_hdmi_i2c_write(struct rk3066_hdmi *hdmi, struct i2c_msg *msgs)
{





 if (msgs->len != 1 ||
     (msgs->addr != DDC_ADDR && msgs->addr != DDC_SEGMENT_ADDR))
  return -EINVAL;

 reinit_completion(&hdmi->i2c->cmpltn);

 if (msgs->addr == DDC_SEGMENT_ADDR)
  hdmi->i2c->segment_addr = msgs->buf[0];
 if (msgs->addr == DDC_ADDR)
  hdmi->i2c->ddc_addr = msgs->buf[0];


 hdmi_writeb(hdmi, HDMI_EDID_WORD_ADDR, hdmi->i2c->ddc_addr);


 hdmi_writeb(hdmi, HDMI_EDID_SEGMENT_POINTER, hdmi->i2c->segment_addr);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_hdmi_i2c {unsigned int stat; int cmp; } ;
struct dw_hdmi {struct dw_hdmi_i2c* i2c; } ;
typedef int irqreturn_t ;


 int HDMI_IH_I2CM_STAT0 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 unsigned int hdmi_readb (struct dw_hdmi*,int ) ;
 int hdmi_writeb (struct dw_hdmi*,unsigned int,int ) ;

__attribute__((used)) static irqreturn_t dw_hdmi_i2c_irq(struct dw_hdmi *hdmi)
{
 struct dw_hdmi_i2c *i2c = hdmi->i2c;
 unsigned int stat;

 stat = hdmi_readb(hdmi, HDMI_IH_I2CM_STAT0);
 if (!stat)
  return IRQ_NONE;

 hdmi_writeb(hdmi, stat, HDMI_IH_I2CM_STAT0);

 i2c->stat = stat;

 complete(&i2c->cmp);

 return IRQ_HANDLED;
}

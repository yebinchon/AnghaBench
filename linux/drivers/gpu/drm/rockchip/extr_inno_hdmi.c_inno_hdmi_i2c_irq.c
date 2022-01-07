
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct inno_hdmi_i2c {int cmp; } ;
struct inno_hdmi {struct inno_hdmi_i2c* i2c; } ;
typedef int irqreturn_t ;


 int HDMI_INTERRUPT_STATUS1 ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int complete (int *) ;
 int hdmi_readb (struct inno_hdmi*,int ) ;
 int hdmi_writeb (struct inno_hdmi*,int ,int) ;
 int m_INT_EDID_READY ;

__attribute__((used)) static irqreturn_t inno_hdmi_i2c_irq(struct inno_hdmi *hdmi)
{
 struct inno_hdmi_i2c *i2c = hdmi->i2c;
 u8 stat;

 stat = hdmi_readb(hdmi, HDMI_INTERRUPT_STATUS1);
 if (!(stat & m_INT_EDID_READY))
  return IRQ_NONE;


 hdmi_writeb(hdmi, HDMI_INTERRUPT_STATUS1, m_INT_EDID_READY);

 complete(&i2c->cmp);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sti_hdmi {int irq_status; } ;
typedef int irqreturn_t ;


 int HDMI_INT_CLR ;
 int HDMI_INT_STA ;
 int IRQ_WAKE_THREAD ;
 int hdmi_read (struct sti_hdmi*,int ) ;
 int hdmi_write (struct sti_hdmi*,int ,int ) ;

__attribute__((used)) static irqreturn_t hdmi_irq(int irq, void *arg)
{
 struct sti_hdmi *hdmi = arg;


 hdmi->irq_status = hdmi_read(hdmi, HDMI_INT_STA);


 hdmi_write(hdmi, hdmi->irq_status, HDMI_INT_CLR);


 hdmi_read(hdmi, HDMI_INT_STA);

 return IRQ_WAKE_THREAD;
}

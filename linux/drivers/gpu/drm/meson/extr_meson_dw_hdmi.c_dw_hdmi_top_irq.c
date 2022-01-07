
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct meson_dw_hdmi {int irq_stat; TYPE_1__* data; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int (* top_read ) (struct meson_dw_hdmi*,int ) ;int (* top_write ) (struct meson_dw_hdmi*,int ,int) ;} ;


 int HDMITX_TOP_INTR_HPD_FALL ;
 int HDMITX_TOP_INTR_HPD_RISE ;
 int HDMITX_TOP_INTR_STAT ;
 int HDMITX_TOP_INTR_STAT_CLR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IRQ_WAKE_THREAD ;
 int stub1 (struct meson_dw_hdmi*,int ) ;
 int stub2 (struct meson_dw_hdmi*,int ,int) ;

__attribute__((used)) static irqreturn_t dw_hdmi_top_irq(int irq, void *dev_id)
{
 struct meson_dw_hdmi *dw_hdmi = dev_id;
 u32 stat;

 stat = dw_hdmi->data->top_read(dw_hdmi, HDMITX_TOP_INTR_STAT);
 dw_hdmi->data->top_write(dw_hdmi, HDMITX_TOP_INTR_STAT_CLR, stat);


 if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL)) {
  dw_hdmi->irq_stat = stat;
  return IRQ_WAKE_THREAD;
 }


 if (stat & 1)
  return IRQ_NONE;



 return IRQ_HANDLED;
}

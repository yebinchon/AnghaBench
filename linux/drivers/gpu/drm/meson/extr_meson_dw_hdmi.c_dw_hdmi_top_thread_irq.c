
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct meson_dw_hdmi {int irq_stat; TYPE_1__ encoder; int hdmi; } ;
typedef int irqreturn_t ;


 int HDMITX_TOP_INTR_HPD_FALL ;
 int HDMITX_TOP_INTR_HPD_RISE ;
 int IRQ_HANDLED ;
 int drm_helper_hpd_irq_event (int ) ;
 int dw_hdmi_setup_rx_sense (int ,int,int) ;

__attribute__((used)) static irqreturn_t dw_hdmi_top_thread_irq(int irq, void *dev_id)
{
 struct meson_dw_hdmi *dw_hdmi = dev_id;
 u32 stat = dw_hdmi->irq_stat;


 if (stat & (HDMITX_TOP_INTR_HPD_RISE | HDMITX_TOP_INTR_HPD_FALL)) {
  bool hpd_connected = 0;

  if (stat & HDMITX_TOP_INTR_HPD_RISE)
   hpd_connected = 1;

  dw_hdmi_setup_rx_sense(dw_hdmi->hdmi, hpd_connected,
           hpd_connected);

  drm_helper_hpd_irq_event(dw_hdmi->encoder.dev);
 }

 return IRQ_HANDLED;
}

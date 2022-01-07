
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct inno_hdmi {TYPE_1__ connector; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int drm_helper_hpd_irq_event (int ) ;

__attribute__((used)) static irqreturn_t inno_hdmi_irq(int irq, void *dev_id)
{
 struct inno_hdmi *hdmi = dev_id;

 drm_helper_hpd_irq_event(hdmi->connector.dev);

 return IRQ_HANDLED;
}

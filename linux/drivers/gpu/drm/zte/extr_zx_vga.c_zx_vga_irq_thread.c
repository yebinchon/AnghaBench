
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct zx_vga {TYPE_1__ connector; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int drm_helper_hpd_irq_event (int ) ;

__attribute__((used)) static irqreturn_t zx_vga_irq_thread(int irq, void *dev_id)
{
 struct zx_vga *vga = dev_id;

 drm_helper_hpd_irq_event(vga->connector.dev);

 return IRQ_HANDLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_ssi_controller {int gdd_tasklet; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int disable_irq_nosync (int) ;
 struct omap_ssi_controller* hsi_controller_drvdata (void*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t ssi_gdd_isr(int irq, void *ssi)
{
 struct omap_ssi_controller *omap_ssi = hsi_controller_drvdata(ssi);

 tasklet_hi_schedule(&omap_ssi->gdd_tasklet);
 disable_irq_nosync(irq);

 return IRQ_HANDLED;
}

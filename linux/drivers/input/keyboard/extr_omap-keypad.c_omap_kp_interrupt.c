
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ OMAP1_MPUIO_BASE ;
 scalar_t__ OMAP_MPUIO_KBD_MASKIT ;
 int kp_tasklet ;
 int omap_writew (int,scalar_t__) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t omap_kp_interrupt(int irq, void *dev_id)
{

 omap_writew(1, OMAP1_MPUIO_BASE + OMAP_MPUIO_KBD_MASKIT);

 tasklet_schedule(&kp_tasklet);

 return IRQ_HANDLED;
}

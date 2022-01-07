
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad_sigma_delta {int irq_dis; int trig; int completion; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int complete (int *) ;
 int disable_irq_nosync (int) ;
 int iio_trigger_poll (int ) ;

__attribute__((used)) static irqreturn_t ad_sd_data_rdy_trig_poll(int irq, void *private)
{
 struct ad_sigma_delta *sigma_delta = private;

 complete(&sigma_delta->completion);
 disable_irq_nosync(irq);
 sigma_delta->irq_dis = 1;
 iio_trigger_poll(sigma_delta->trig);

 return IRQ_HANDLED;
}

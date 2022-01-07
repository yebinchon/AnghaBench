
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sht15_data {scalar_t__ state; int read_work; int interrupt_handled; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ SHT15_READING_NOTHING ;
 int atomic_inc (int *) ;
 int disable_irq_nosync (int) ;
 int schedule_work (int *) ;

__attribute__((used)) static irqreturn_t sht15_interrupt_fired(int irq, void *d)
{
 struct sht15_data *data = d;


 disable_irq_nosync(irq);
 atomic_inc(&data->interrupt_handled);

 if (data->state != SHT15_READING_NOTHING)
  schedule_work(&data->read_work);
 return IRQ_HANDLED;
}

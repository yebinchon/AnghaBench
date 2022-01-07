
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_gpadc_iio {int completion; int adc_data; int regmap; int ignore_fifo_data_irq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int SUN4I_GPADC_DATA ;
 scalar_t__ atomic_read (int *) ;
 int complete (int *) ;
 int regmap_read (int ,int ,int *) ;

__attribute__((used)) static irqreturn_t sun4i_gpadc_fifo_data_irq_handler(int irq, void *dev_id)
{
 struct sun4i_gpadc_iio *info = dev_id;

 if (atomic_read(&info->ignore_fifo_data_irq))
  goto out;

 if (!regmap_read(info->regmap, SUN4I_GPADC_DATA, &info->adc_data))
  complete(&info->completion);

out:
 return IRQ_HANDLED;
}

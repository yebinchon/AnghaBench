
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bmp280_data {int use_eoc; } ;


 unsigned long IRQF_TRIGGER_RISING ;
 int bmp085_eoc_irq ;
 int dev_err (struct device*,char*) ;
 int devm_request_threaded_irq (struct device*,int,int ,int *,unsigned long,char const*,struct bmp280_data*) ;
 int irq_get_irq_data (int) ;
 unsigned long irqd_get_trigger_type (int ) ;

__attribute__((used)) static int bmp085_fetch_eoc_irq(struct device *dev,
    const char *name,
    int irq,
    struct bmp280_data *data)
{
 unsigned long irq_trig;
 int ret;

 irq_trig = irqd_get_trigger_type(irq_get_irq_data(irq));
 if (irq_trig != IRQF_TRIGGER_RISING) {
  dev_err(dev, "non-rising trigger given for EOC interrupt, "
   "trying to enforce it\n");
  irq_trig = IRQF_TRIGGER_RISING;
 }
 ret = devm_request_threaded_irq(dev,
   irq,
   bmp085_eoc_irq,
   ((void*)0),
   irq_trig,
   name,
   data);
 if (ret) {

  dev_err(dev, "unable to request DRDY IRQ\n");
  return 0;
 }

 data->use_eoc = 1;
 return 0;
}

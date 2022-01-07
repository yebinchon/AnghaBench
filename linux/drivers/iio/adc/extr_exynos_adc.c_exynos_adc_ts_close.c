
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct exynos_adc {int tsirq; } ;


 int disable_irq (int ) ;
 struct exynos_adc* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static void exynos_adc_ts_close(struct input_dev *dev)
{
 struct exynos_adc *info = input_get_drvdata(dev);

 disable_irq(info->tsirq);
}

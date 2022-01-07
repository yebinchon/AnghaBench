
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct iio_dev {int dev; } ;
struct exynos_adc {int vdd; TYPE_1__* data; int irq; scalar_t__ input; int tsirq; } ;
struct TYPE_2__ {int (* exit_hw ) (struct exynos_adc*) ;} ;


 int CONFIG_INPUT ;
 scalar_t__ IS_REACHABLE (int ) ;
 int device_for_each_child (int *,int *,int ) ;
 int exynos_adc_disable_clk (struct exynos_adc*) ;
 int exynos_adc_remove_devices ;
 int exynos_adc_unprepare_clk (struct exynos_adc*) ;
 int free_irq (int ,struct exynos_adc*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct exynos_adc* iio_priv (struct iio_dev*) ;
 int input_unregister_device (scalar_t__) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;
 int stub1 (struct exynos_adc*) ;

__attribute__((used)) static int exynos_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct exynos_adc *info = iio_priv(indio_dev);

 if (IS_REACHABLE(CONFIG_INPUT) && info->input) {
  free_irq(info->tsirq, info);
  input_unregister_device(info->input);
 }
 device_for_each_child(&indio_dev->dev, ((void*)0),
    exynos_adc_remove_devices);
 iio_device_unregister(indio_dev);
 free_irq(info->irq, info);
 if (info->data->exit_hw)
  info->data->exit_hw(info);
 exynos_adc_disable_clk(info);
 exynos_adc_unprepare_clk(info);
 regulator_disable(info->vdd);

 return 0;
}

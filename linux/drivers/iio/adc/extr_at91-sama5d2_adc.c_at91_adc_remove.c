
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct at91_adc_state {int reg; int vref; int per_clk; } ;


 int at91_adc_dma_disable (struct platform_device*) ;
 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct at91_adc_state* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static int at91_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct at91_adc_state *st = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);

 at91_adc_dma_disable(pdev);

 clk_disable_unprepare(st->per_clk);

 regulator_disable(st->vref);
 regulator_disable(st->reg);

 return 0;
}

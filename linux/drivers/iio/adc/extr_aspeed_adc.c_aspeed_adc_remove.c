
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct aspeed_adc_data {TYPE_1__* clk_prescaler; TYPE_1__* clk_scaler; int rst; scalar_t__ base; } ;
struct TYPE_2__ {int clk; } ;


 int ASPEED_OPERATION_MODE_POWER_DOWN ;
 scalar_t__ ASPEED_REG_ENGINE_CONTROL ;
 int clk_disable_unprepare (int ) ;
 int clk_hw_unregister_divider (TYPE_1__*) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct aspeed_adc_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int reset_control_assert (int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int aspeed_adc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct aspeed_adc_data *data = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 writel(ASPEED_OPERATION_MODE_POWER_DOWN,
  data->base + ASPEED_REG_ENGINE_CONTROL);
 clk_disable_unprepare(data->clk_scaler->clk);
 reset_control_assert(data->rst);
 clk_hw_unregister_divider(data->clk_scaler);
 clk_hw_unregister_divider(data->clk_prescaler);

 return 0;
}

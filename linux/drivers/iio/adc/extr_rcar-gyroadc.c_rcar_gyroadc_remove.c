
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_gyroadc {int clk; struct device* dev; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct rcar_gyroadc* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int pm_runtime_set_suspended (struct device*) ;
 int rcar_gyroadc_deinit_supplies (struct iio_dev*) ;
 int rcar_gyroadc_hw_stop (struct rcar_gyroadc*) ;

__attribute__((used)) static int rcar_gyroadc_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct rcar_gyroadc *priv = iio_priv(indio_dev);
 struct device *dev = priv->dev;

 iio_device_unregister(indio_dev);
 pm_runtime_get_sync(dev);
 rcar_gyroadc_hw_stop(priv);
 pm_runtime_put_sync(dev);
 pm_runtime_disable(dev);
 pm_runtime_set_suspended(dev);
 clk_disable_unprepare(priv->clk);
 rcar_gyroadc_deinit_supplies(indio_dev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vf610_dac {int clk; } ;
struct platform_device {int dummy; } ;
struct iio_dev {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int iio_device_unregister (struct iio_dev*) ;
 struct vf610_dac* iio_priv (struct iio_dev*) ;
 struct iio_dev* platform_get_drvdata (struct platform_device*) ;
 int vf610_dac_exit (struct vf610_dac*) ;

__attribute__((used)) static int vf610_dac_remove(struct platform_device *pdev)
{
 struct iio_dev *indio_dev = platform_get_drvdata(pdev);
 struct vf610_dac *info = iio_priv(indio_dev);

 iio_device_unregister(indio_dev);
 vf610_dac_exit(info);
 clk_disable_unprepare(info->clk);

 return 0;
}

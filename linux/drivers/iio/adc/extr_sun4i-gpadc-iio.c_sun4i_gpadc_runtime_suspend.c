
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_gpadc_iio {int regmap; } ;
struct device {int dummy; } ;


 int SUN4I_GPADC_CTRL1 ;
 int SUN4I_GPADC_TPR ;
 int dev_get_drvdata (struct device*) ;
 struct sun4i_gpadc_iio* iio_priv (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int sun4i_gpadc_runtime_suspend(struct device *dev)
{
 struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));


 regmap_write(info->regmap, SUN4I_GPADC_CTRL1, 0);

 regmap_write(info->regmap, SUN4I_GPADC_TPR, 0);

 return 0;
}

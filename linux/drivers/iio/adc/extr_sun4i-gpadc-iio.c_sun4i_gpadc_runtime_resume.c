
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_gpadc_iio {int regmap; TYPE_1__* data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int tp_mode_en; } ;


 int SUN4I_GPADC_CTRL0 ;
 int SUN4I_GPADC_CTRL0_ADC_CLK_DIVIDER (int) ;
 int SUN4I_GPADC_CTRL0_FS_DIV (int) ;
 int SUN4I_GPADC_CTRL0_T_ACQ (int) ;
 int SUN4I_GPADC_CTRL1 ;
 int SUN4I_GPADC_CTRL3 ;
 int SUN4I_GPADC_CTRL3_FILTER_EN ;
 int SUN4I_GPADC_CTRL3_FILTER_TYPE (int) ;
 int SUN4I_GPADC_TPR ;
 int SUN4I_GPADC_TPR_TEMP_ENABLE ;
 int SUN4I_GPADC_TPR_TEMP_PERIOD (int) ;
 int dev_get_drvdata (struct device*) ;
 struct sun4i_gpadc_iio* iio_priv (int ) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int sun4i_gpadc_runtime_resume(struct device *dev)
{
 struct sun4i_gpadc_iio *info = iio_priv(dev_get_drvdata(dev));


 regmap_write(info->regmap, SUN4I_GPADC_CTRL0,
       SUN4I_GPADC_CTRL0_ADC_CLK_DIVIDER(2) |
       SUN4I_GPADC_CTRL0_FS_DIV(7) |
       SUN4I_GPADC_CTRL0_T_ACQ(63));
 regmap_write(info->regmap, SUN4I_GPADC_CTRL1, info->data->tp_mode_en);
 regmap_write(info->regmap, SUN4I_GPADC_CTRL3,
       SUN4I_GPADC_CTRL3_FILTER_EN |
       SUN4I_GPADC_CTRL3_FILTER_TYPE(1));

 regmap_write(info->regmap, SUN4I_GPADC_TPR,
       SUN4I_GPADC_TPR_TEMP_ENABLE |
       SUN4I_GPADC_TPR_TEMP_PERIOD(800));

 return 0;
}

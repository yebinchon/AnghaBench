
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sun4i_gpadc_iio {int temp_data_irq; int regmap; scalar_t__ no_irq; } ;
struct TYPE_2__ {int parent; } ;
struct iio_dev {TYPE_1__ dev; } ;


 int SUN4I_GPADC_TEMP_DATA ;
 struct sun4i_gpadc_iio* iio_priv (struct iio_dev*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int regmap_read (int ,int ,int*) ;
 int sun4i_gpadc_read (struct iio_dev*,int ,int*,int ) ;

__attribute__((used)) static int sun4i_gpadc_temp_read(struct iio_dev *indio_dev, int *val)
{
 struct sun4i_gpadc_iio *info = iio_priv(indio_dev);

 if (info->no_irq) {
  pm_runtime_get_sync(indio_dev->dev.parent);

  regmap_read(info->regmap, SUN4I_GPADC_TEMP_DATA, val);

  pm_runtime_mark_last_busy(indio_dev->dev.parent);
  pm_runtime_put_autosuspend(indio_dev->dev.parent);

  return 0;
 }

 return sun4i_gpadc_read(indio_dev, 0, val, info->temp_data_irq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ms5611_state {int (* read_adc_temp_and_pressure ) (int *,int *,int *) ;TYPE_1__* chip_info; } ;
struct iio_dev {int dev; } ;
typedef int s32 ;
struct TYPE_2__ {int (* temp_and_pressure_compensate ) (TYPE_1__*,int *,int *) ;} ;


 int dev_err (int *,char*) ;
 struct ms5611_state* iio_priv (struct iio_dev*) ;
 int stub1 (int *,int *,int *) ;
 int stub2 (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int ms5611_read_temp_and_pressure(struct iio_dev *indio_dev,
      s32 *temp, s32 *pressure)
{
 int ret;
 struct ms5611_state *st = iio_priv(indio_dev);

 ret = st->read_adc_temp_and_pressure(&indio_dev->dev, temp, pressure);
 if (ret < 0) {
  dev_err(&indio_dev->dev,
   "failed to read temperature and pressure\n");
  return ret;
 }

 return st->chip_info->temp_and_pressure_compensate(st->chip_info,
          temp, pressure);
}

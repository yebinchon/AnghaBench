
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct apds9960_data {TYPE_1__* client; int reg_int_ges; int reg_enable_ges; } ;
struct TYPE_2__ {int dev; } ;


 struct apds9960_data* iio_priv (struct iio_dev*) ;
 int pm_runtime_put_autosuspend (int *) ;
 int regmap_field_write (int ,int ) ;

__attribute__((used)) static int apds9960_buffer_predisable(struct iio_dev *indio_dev)
{
 struct apds9960_data *data = iio_priv(indio_dev);
 int ret;

 ret = regmap_field_write(data->reg_enable_ges, 0);
 if (ret)
  return ret;

 ret = regmap_field_write(data->reg_int_ges, 0);
 if (ret)
  return ret;

 pm_runtime_put_autosuspend(&data->client->dev);

 return 0;
}

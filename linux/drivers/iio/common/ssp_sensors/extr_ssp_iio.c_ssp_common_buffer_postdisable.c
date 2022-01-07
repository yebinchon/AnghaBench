
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssp_sensor_data {int buffer; int type; } ;
struct ssp_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
struct TYPE_3__ {int parent; } ;


 struct ssp_data* dev_get_drvdata (int ) ;
 struct ssp_sensor_data* iio_priv (struct iio_dev*) ;
 int kfree (int ) ;
 int ssp_disable_sensor (struct ssp_data*,int ) ;

int ssp_common_buffer_postdisable(struct iio_dev *indio_dev)
{
 int ret;
 struct ssp_sensor_data *spd = iio_priv(indio_dev);
 struct ssp_data *data = dev_get_drvdata(indio_dev->dev.parent->parent);

 ret = ssp_disable_sensor(data, spd->type);
 if (ret < 0)
  return ret;

 kfree(spd->buffer);

 return ret;
}

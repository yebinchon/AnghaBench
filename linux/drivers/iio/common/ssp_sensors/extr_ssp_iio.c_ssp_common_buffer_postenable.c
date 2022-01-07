
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssp_sensor_data {int type; int buffer; } ;
struct ssp_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {int scan_bytes; TYPE_2__ dev; } ;
struct TYPE_3__ {int parent; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 struct ssp_data* dev_get_drvdata (int ) ;
 struct ssp_sensor_data* iio_priv (struct iio_dev*) ;
 int kmalloc (int ,int) ;
 int ssp_enable_sensor (struct ssp_data*,int ,int ) ;
 int ssp_get_sensor_delay (struct ssp_data*,int ) ;

int ssp_common_buffer_postenable(struct iio_dev *indio_dev)
{
 struct ssp_sensor_data *spd = iio_priv(indio_dev);
 struct ssp_data *data = dev_get_drvdata(indio_dev->dev.parent->parent);




 spd->buffer = kmalloc(indio_dev->scan_bytes, GFP_KERNEL | GFP_DMA);
 if (!spd->buffer)
  return -ENOMEM;

 return ssp_enable_sensor(data, spd->type,
     ssp_get_sensor_delay(data, spd->type));
}

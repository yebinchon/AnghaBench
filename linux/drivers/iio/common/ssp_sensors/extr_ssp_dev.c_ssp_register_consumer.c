
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssp_data {struct iio_dev** sensor_devs; } ;
struct TYPE_4__ {TYPE_1__* parent; } ;
struct iio_dev {TYPE_2__ dev; } ;
typedef enum ssp_sensor_type { ____Placeholder_ssp_sensor_type } ssp_sensor_type ;
struct TYPE_3__ {int parent; } ;


 struct ssp_data* dev_get_drvdata (int ) ;

void ssp_register_consumer(struct iio_dev *indio_dev, enum ssp_sensor_type type)
{
 struct ssp_data *data = dev_get_drvdata(indio_dev->dev.parent->parent);

 data->sensor_devs[type] = indio_dev;
}

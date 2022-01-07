
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmx61_data {TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int KMX61_REG_INL ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 struct kmx61_data* kmx61_get_data (struct iio_dev*) ;

__attribute__((used)) static int kmx61_trig_try_reenable(struct iio_trigger *trig)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct kmx61_data *data = kmx61_get_data(indio_dev);
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, KMX61_REG_INL);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_inl\n");
  return ret;
 }

 return 0;
}

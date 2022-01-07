
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kxcjk1013_data {TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int KXCJK1013_REG_INT_REL ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_1__*,int ) ;
 struct kxcjk1013_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int kxcjk1013_trig_try_reen(struct iio_trigger *trig)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct kxcjk1013_data *data = iio_priv(indio_dev);
 int ret;

 ret = i2c_smbus_read_byte_data(data->client, KXCJK1013_REG_INT_REL);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_int_rel\n");
  return ret;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct cm3323_data {int reg_conf; TYPE_1__* client; } ;
struct TYPE_3__ {int dev; } ;


 int CM3323_CMD_CONF ;
 int CM3323_CONF_AF_BIT ;
 int CM3323_CONF_SD_BIT ;
 int dev_err (int *,char*) ;
 int i2c_smbus_read_word_data (TYPE_1__*,int ) ;
 int i2c_smbus_write_word_data (TYPE_1__*,int ,int) ;
 struct cm3323_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int cm3323_init(struct iio_dev *indio_dev)
{
 int ret;
 struct cm3323_data *data = iio_priv(indio_dev);

 ret = i2c_smbus_read_word_data(data->client, CM3323_CMD_CONF);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error reading reg_conf\n");
  return ret;
 }


 ret &= ~(CM3323_CONF_SD_BIT | CM3323_CONF_AF_BIT);

 ret = i2c_smbus_write_word_data(data->client, CM3323_CMD_CONF, ret);
 if (ret < 0) {
  dev_err(&data->client->dev, "Error writing reg_conf\n");
  return ret;
 }

 data->reg_conf = ret;

 return 0;
}

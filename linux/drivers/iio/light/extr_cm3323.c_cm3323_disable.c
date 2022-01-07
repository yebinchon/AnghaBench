
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct cm3323_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int CM3323_CMD_CONF ;
 int CM3323_CONF_SD_BIT ;
 int dev_err (int *,char*) ;
 int i2c_smbus_write_word_data (TYPE_1__*,int ,int ) ;
 struct cm3323_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static void cm3323_disable(void *data)
{
 int ret;
 struct iio_dev *indio_dev = data;
 struct cm3323_data *cm_data = iio_priv(indio_dev);

 ret = i2c_smbus_write_word_data(cm_data->client, CM3323_CMD_CONF,
     CM3323_CONF_SD_BIT);
 if (ret < 0)
  dev_err(&cm_data->client->dev, "Error writing reg_conf\n");
}

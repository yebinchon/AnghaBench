
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct si1145_data {int client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; int address; int scan_index; } ;


 int BIT (int ) ;
 int EOVERFLOW ;
 scalar_t__ IIO_PROXIMITY ;
 int SI1145_CMD_ALS_FORCE ;
 int SI1145_CMD_PS_FORCE ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct si1145_data* iio_priv (struct iio_dev*) ;
 int si1145_command (struct si1145_data*,int ) ;
 int si1145_set_chlist (struct iio_dev*,int ) ;

__attribute__((used)) static int si1145_measure(struct iio_dev *indio_dev,
     struct iio_chan_spec const *chan)
{
 struct si1145_data *data = iio_priv(indio_dev);
 u8 cmd;
 int ret;

 ret = si1145_set_chlist(indio_dev, BIT(chan->scan_index));
 if (ret < 0)
  return ret;

 cmd = (chan->type == IIO_PROXIMITY) ? SI1145_CMD_PS_FORCE :
  SI1145_CMD_ALS_FORCE;
 ret = si1145_command(data, cmd);
 if (ret < 0 && ret != -EOVERFLOW)
  return ret;

 return i2c_smbus_read_word_data(data->client, chan->address);
}

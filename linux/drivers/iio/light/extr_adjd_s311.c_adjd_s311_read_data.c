
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iio_dev {int dummy; } ;
struct adjd_s311_data {int client; } ;


 int ADJD_S311_DATA_MASK ;
 int adjd_s311_req_data (struct iio_dev*) ;
 int i2c_smbus_read_word_data (int ,int ) ;
 struct adjd_s311_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int adjd_s311_read_data(struct iio_dev *indio_dev, u8 reg, int *val)
{
 struct adjd_s311_data *data = iio_priv(indio_dev);

 int ret = adjd_s311_req_data(indio_dev);
 if (ret < 0)
  return ret;

 ret = i2c_smbus_read_word_data(data->client, reg);
 if (ret < 0)
  return ret;

 *val = ret & ADJD_S311_DATA_MASK;

 return 0;
}

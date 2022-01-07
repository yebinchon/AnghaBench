
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mcp4725_data {TYPE_1__* client; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int dev; } ;


 struct mcp4725_data* iio_priv (struct iio_dev*) ;
 int mcp4725_resume (int *) ;
 int mcp4725_suspend (int *) ;
 int strtobool (char const*,int*) ;

__attribute__((used)) static ssize_t mcp4725_write_powerdown(struct iio_dev *indio_dev,
  uintptr_t private, const struct iio_chan_spec *chan,
  const char *buf, size_t len)
{
 struct mcp4725_data *data = iio_priv(indio_dev);
 bool state;
 int ret;

 ret = strtobool(buf, &state);
 if (ret)
  return ret;

 if (state)
  ret = mcp4725_suspend(&data->client->dev);
 else
  ret = mcp4725_resume(&data->client->dev);
 if (ret < 0)
  return ret;

 return len;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4725_data {int powerdown; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef int ssize_t ;


 struct mcp4725_data* iio_priv (struct iio_dev*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t mcp4725_read_powerdown(struct iio_dev *indio_dev,
 uintptr_t private, const struct iio_chan_spec *chan, char *buf)
{
 struct mcp4725_data *data = iio_priv(indio_dev);

 return sprintf(buf, "%d\n", data->powerdown);
}

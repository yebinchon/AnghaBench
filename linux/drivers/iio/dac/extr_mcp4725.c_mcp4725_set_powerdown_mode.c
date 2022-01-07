
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcp4725_data {unsigned int powerdown_mode; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;


 struct mcp4725_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int mcp4725_set_powerdown_mode(struct iio_dev *indio_dev,
 const struct iio_chan_spec *chan, unsigned mode)
{
 struct mcp4725_data *data = iio_priv(indio_dev);

 data->powerdown_mode = mode;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct atlas_data {TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int atlas_set_interrupt (struct atlas_data*,int) ;
 struct atlas_data* iio_priv (struct iio_dev*) ;
 int iio_triggered_buffer_predisable (struct iio_dev*) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;

__attribute__((used)) static int atlas_buffer_predisable(struct iio_dev *indio_dev)
{
 struct atlas_data *data = iio_priv(indio_dev);
 int ret;

 ret = iio_triggered_buffer_predisable(indio_dev);
 if (ret)
  return ret;

 ret = atlas_set_interrupt(data, 0);
 if (ret)
  return ret;

 pm_runtime_mark_last_busy(&data->client->dev);
 return pm_runtime_put_autosuspend(&data->client->dev);
}

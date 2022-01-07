
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpr0521_data {TYPE_1__* client; int lock; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int RPR0521_MODE_ALS_MASK ;
 int RPR0521_MODE_PXS_MASK ;
 int dev_err (int *,char*) ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpr0521_set_power_state (struct rpr0521_data*,int,int) ;

__attribute__((used)) static int rpr0521_buffer_preenable(struct iio_dev *indio_dev)
{
 int err;
 struct rpr0521_data *data = iio_priv(indio_dev);

 mutex_lock(&data->lock);
 err = rpr0521_set_power_state(data, 1,
  (RPR0521_MODE_PXS_MASK | RPR0521_MODE_ALS_MASK));
 mutex_unlock(&data->lock);
 if (err)
  dev_err(&data->client->dev, "_buffer_preenable fail\n");

 return err;
}

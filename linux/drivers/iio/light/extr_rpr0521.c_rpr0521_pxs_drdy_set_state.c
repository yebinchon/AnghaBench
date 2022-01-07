
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpr0521_data {TYPE_1__* client; } ;
struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 struct rpr0521_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int rpr0521_write_int_disable (struct rpr0521_data*) ;
 int rpr0521_write_int_enable (struct rpr0521_data*) ;

__attribute__((used)) static int rpr0521_pxs_drdy_set_state(struct iio_trigger *trigger,
 bool enable_drdy)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trigger);
 struct rpr0521_data *data = iio_priv(indio_dev);
 int err;

 if (enable_drdy)
  err = rpr0521_write_int_enable(data);
 else
  err = rpr0521_write_int_disable(data);
 if (err)
  dev_err(&data->client->dev, "rpr0521_pxs_drdy_set_state failed\n");

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct fxas21002c_data {int * regmap_fields; } ;


 size_t F_INT_EN_DRDY ;
 struct fxas21002c_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;
 int regmap_field_write (int ,int) ;

__attribute__((used)) static int fxas21002c_data_rdy_trigger_set_state(struct iio_trigger *trig,
       bool state)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct fxas21002c_data *data = iio_priv(indio_dev);

 return regmap_field_write(data->regmap_fields[F_INT_EN_DRDY], state);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_trigger {int dummy; } ;
struct iio_dev {int dummy; } ;
struct bmi160_data {int regmap; } ;


 int bmi160_enable_irq (int ,int) ;
 struct bmi160_data* iio_priv (struct iio_dev*) ;
 struct iio_dev* iio_trigger_get_drvdata (struct iio_trigger*) ;

__attribute__((used)) static int bmi160_data_rdy_trigger_set_state(struct iio_trigger *trig,
          bool enable)
{
 struct iio_dev *indio_dev = iio_trigger_get_drvdata(trig);
 struct bmi160_data *data = iio_priv(indio_dev);

 return bmi160_enable_irq(data->regmap, enable);
}

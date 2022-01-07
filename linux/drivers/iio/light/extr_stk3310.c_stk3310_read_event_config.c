
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk3310_data {int reg_int_ps; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 struct stk3310_data* iio_priv (struct iio_dev*) ;
 int regmap_field_read (int ,unsigned int*) ;

__attribute__((used)) static int stk3310_read_event_config(struct iio_dev *indio_dev,
         const struct iio_chan_spec *chan,
         enum iio_event_type type,
         enum iio_event_direction dir)
{
 unsigned int event_val;
 int ret;
 struct stk3310_data *data = iio_priv(indio_dev);

 ret = regmap_field_read(data->reg_int_ps, &event_val);
 if (ret < 0)
  return ret;

 return event_val;
}

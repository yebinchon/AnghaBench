
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct apds9300_data {int intr_en; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 struct apds9300_data* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int apds9300_read_interrupt_config(struct iio_dev *indio_dev,
  const struct iio_chan_spec *chan,
  enum iio_event_type type,
  enum iio_event_direction dir)
{
 struct apds9300_data *data = iio_priv(indio_dev);

 return data->intr_en;
}

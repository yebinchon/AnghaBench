
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dummy_state {int event_en; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 struct iio_dummy_state* iio_priv (struct iio_dev*) ;

int iio_simple_dummy_read_event_config(struct iio_dev *indio_dev,
           const struct iio_chan_spec *chan,
           enum iio_event_type type,
           enum iio_event_direction dir)
{
 struct iio_dummy_state *st = iio_priv(indio_dev);

 return st->event_en;
}

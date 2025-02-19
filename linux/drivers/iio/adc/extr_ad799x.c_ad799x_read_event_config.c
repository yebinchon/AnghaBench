
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int scan_index; } ;
struct ad799x_state {int config; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int AD7998_ALERT_EN ;
 int AD799X_CHANNEL_SHIFT ;
 int BIT (int ) ;
 struct ad799x_state* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int ad799x_read_event_config(struct iio_dev *indio_dev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir)
{
 struct ad799x_state *st = iio_priv(indio_dev);

 if (!(st->config & AD7998_ALERT_EN))
  return 0;

 if ((st->config >> AD799X_CHANNEL_SHIFT) & BIT(chan->scan_index))
  return 1;

 return 0;
}

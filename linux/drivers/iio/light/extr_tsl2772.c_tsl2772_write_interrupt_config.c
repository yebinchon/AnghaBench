
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int als_interrupt_en; int prox_interrupt_en; } ;
struct tsl2772_chip {TYPE_1__ settings; } ;
struct iio_dev {int dummy; } ;
struct iio_chan_spec {scalar_t__ type; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 scalar_t__ IIO_INTENSITY ;
 struct tsl2772_chip* iio_priv (struct iio_dev*) ;
 int tsl2772_invoke_change (struct iio_dev*) ;

__attribute__((used)) static int tsl2772_write_interrupt_config(struct iio_dev *indio_dev,
       const struct iio_chan_spec *chan,
       enum iio_event_type type,
       enum iio_event_direction dir,
       int val)
{
 struct tsl2772_chip *chip = iio_priv(indio_dev);

 if (chan->type == IIO_INTENSITY)
  chip->settings.als_interrupt_en = val ? 1 : 0;
 else
  chip->settings.prox_interrupt_en = val ? 1 : 0;

 return tsl2772_invoke_change(indio_dev);
}

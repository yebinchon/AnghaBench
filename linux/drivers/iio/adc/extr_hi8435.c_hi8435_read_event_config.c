
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int channel; } ;
struct hi8435_priv {int event_scan_mask; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int BIT (int ) ;
 struct hi8435_priv* iio_priv (struct iio_dev*) ;

__attribute__((used)) static int hi8435_read_event_config(struct iio_dev *idev,
        const struct iio_chan_spec *chan,
        enum iio_event_type type,
        enum iio_event_direction dir)
{
 struct hi8435_priv *priv = iio_priv(idev);

 return !!(priv->event_scan_mask & BIT(chan->channel));
}

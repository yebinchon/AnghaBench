
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm36651_data {int lock; int flags; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int CM36651_PROXIMITY_EV_EN ;
 struct cm36651_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int cm36651_read_prox_event_config(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     enum iio_event_type type,
     enum iio_event_direction dir)
{
 struct cm36651_data *cm36651 = iio_priv(indio_dev);
 int event_en;

 mutex_lock(&cm36651->lock);

 event_en = test_bit(CM36651_PROXIMITY_EV_EN, &cm36651->flags);

 mutex_unlock(&cm36651->lock);

 return event_en;
}

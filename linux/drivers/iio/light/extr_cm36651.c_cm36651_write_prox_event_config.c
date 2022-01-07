
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct iio_chan_spec {int dummy; } ;
struct cm36651_data {int lock; } ;
typedef enum iio_event_type { ____Placeholder_iio_event_type } iio_event_type ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;


 int CM36651_CMD_PROX_EV_DIS ;
 int CM36651_CMD_PROX_EV_EN ;
 int EINVAL ;
 int cm36651_set_operation_mode (struct cm36651_data*,int) ;
 struct cm36651_data* iio_priv (struct iio_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int cm36651_write_prox_event_config(struct iio_dev *indio_dev,
     const struct iio_chan_spec *chan,
     enum iio_event_type type,
     enum iio_event_direction dir,
     int state)
{
 struct cm36651_data *cm36651 = iio_priv(indio_dev);
 int cmd, ret = -EINVAL;

 mutex_lock(&cm36651->lock);

 cmd = state ? CM36651_CMD_PROX_EV_EN : CM36651_CMD_PROX_EV_DIS;
 ret = cm36651_set_operation_mode(cm36651, cmd);

 mutex_unlock(&cm36651->lock);

 return ret;
}

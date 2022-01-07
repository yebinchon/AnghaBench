
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sca3000_state {int* rx; int lock; } ;
struct iio_dev {int dummy; } ;
typedef int s64 ;
typedef int irqreturn_t ;


 int IIO_ACCEL ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_MAG ;
 int IIO_MOD_EVENT_CODE (int ,int ,int ,int ,int ) ;
 int IIO_MOD_X ;
 int IIO_MOD_X_AND_Y_AND_Z ;
 int IIO_MOD_Y ;
 int IIO_MOD_Z ;
 int IRQ_HANDLED ;
 int SCA3000_INT_STATUS_FREE_FALL ;
 int SCA3000_INT_STATUS_X_TRIGGER ;
 int SCA3000_INT_STATUS_Y_TRIGGER ;
 int SCA3000_INT_STATUS_Z_TRIGGER ;
 int SCA3000_REG_INT_STATUS_ADDR ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct sca3000_state* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sca3000_read_data_short (struct sca3000_state*,int ,int) ;
 int sca3000_ring_int_process (int,struct iio_dev*) ;

__attribute__((used)) static irqreturn_t sca3000_event_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct sca3000_state *st = iio_priv(indio_dev);
 int ret, val;
 s64 last_timestamp = iio_get_time_ns(indio_dev);





 mutex_lock(&st->lock);
 ret = sca3000_read_data_short(st, SCA3000_REG_INT_STATUS_ADDR, 1);
 val = st->rx[0];
 mutex_unlock(&st->lock);
 if (ret)
  goto done;

 sca3000_ring_int_process(val, indio_dev);

 if (val & SCA3000_INT_STATUS_FREE_FALL)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_X_AND_Y_AND_Z,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_FALLING),
          last_timestamp);

 if (val & SCA3000_INT_STATUS_Y_TRIGGER)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Y,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_RISING),
          last_timestamp);

 if (val & SCA3000_INT_STATUS_X_TRIGGER)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_X,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_RISING),
          last_timestamp);

 if (val & SCA3000_INT_STATUS_Z_TRIGGER)
  iio_push_event(indio_dev,
          IIO_MOD_EVENT_CODE(IIO_ACCEL,
        0,
        IIO_MOD_Z,
        IIO_EV_TYPE_MAG,
        IIO_EV_DIR_RISING),
          last_timestamp);

done:
 return IRQ_HANDLED;
}

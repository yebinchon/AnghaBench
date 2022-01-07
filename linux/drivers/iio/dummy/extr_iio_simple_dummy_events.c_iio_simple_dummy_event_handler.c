
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dummy_state {int event_timestamp; int event_val; int activity_walking; int activity_running; TYPE_1__* regs; } ;
struct iio_dev {int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int reg_data; int reg_id; } ;


 int IIO_ACTIVITY ;
 int IIO_EVENT_CODE (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_NONE ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_CHANGE ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_MOD_RUNNING ;
 int IIO_MOD_WALKING ;
 int IIO_NO_MOD ;
 int IIO_STEPS ;
 int IIO_VOLTAGE ;
 int IRQ_HANDLED ;
 int dev_dbg (int *,char*,int ,int) ;
 struct iio_dummy_state* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t iio_simple_dummy_event_handler(int irq, void *private)
{
 struct iio_dev *indio_dev = private;
 struct iio_dummy_state *st = iio_priv(indio_dev);

 dev_dbg(&indio_dev->dev, "id %x event %x\n",
  st->regs->reg_id, st->regs->reg_data);

 switch (st->regs->reg_data) {
 case 0:
  iio_push_event(indio_dev,
          IIO_EVENT_CODE(IIO_VOLTAGE, 0, 0,
           IIO_EV_DIR_RISING,
           IIO_EV_TYPE_THRESH, 0, 0, 0),
          st->event_timestamp);
  break;
 case 1:
  if (st->activity_running > st->event_val)
   iio_push_event(indio_dev,
           IIO_EVENT_CODE(IIO_ACTIVITY, 0,
            IIO_MOD_RUNNING,
            IIO_EV_DIR_RISING,
            IIO_EV_TYPE_THRESH,
            0, 0, 0),
           st->event_timestamp);
  break;
 case 2:
  if (st->activity_walking < st->event_val)
   iio_push_event(indio_dev,
           IIO_EVENT_CODE(IIO_ACTIVITY, 0,
            IIO_MOD_WALKING,
            IIO_EV_DIR_FALLING,
            IIO_EV_TYPE_THRESH,
            0, 0, 0),
           st->event_timestamp);
  break;
 case 3:
  iio_push_event(indio_dev,
          IIO_EVENT_CODE(IIO_STEPS, 0, IIO_NO_MOD,
           IIO_EV_DIR_NONE,
           IIO_EV_TYPE_CHANGE, 0, 0, 0),
          st->event_timestamp);
  break;
 default:
  break;
 }

 return IRQ_HANDLED;
}

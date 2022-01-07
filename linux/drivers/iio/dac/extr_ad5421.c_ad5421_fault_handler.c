
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_dev {int dummy; } ;
struct ad5421_state {unsigned int fault_mask; } ;
typedef int irqreturn_t ;


 unsigned int AD5421_FAULT_OVER_CURRENT ;
 unsigned int AD5421_FAULT_TEMP_OVER_140 ;
 unsigned int AD5421_FAULT_TRIGGER_IRQ ;
 unsigned int AD5421_FAULT_UNDER_CURRENT ;
 int AD5421_REG_FAULT ;
 int IIO_CURRENT ;
 int IIO_EV_DIR_FALLING ;
 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_MAG ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_TEMP ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int ad5421_read (struct iio_dev*,int ) ;
 int ad5421_update_ctrl (struct iio_dev*,int ,int ) ;
 int iio_get_time_ns (struct iio_dev*) ;
 struct ad5421_state* iio_priv (struct iio_dev*) ;
 int iio_push_event (struct iio_dev*,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static irqreturn_t ad5421_fault_handler(int irq, void *data)
{
 struct iio_dev *indio_dev = data;
 struct ad5421_state *st = iio_priv(indio_dev);
 unsigned int fault;
 unsigned int old_fault = 0;
 unsigned int events;

 fault = ad5421_read(indio_dev, AD5421_REG_FAULT);
 if (!fault)
  return IRQ_NONE;






 ad5421_update_ctrl(indio_dev, 0, 0);
 do {


  if (fault == 0xffff)
   fault = 0;


  events = (old_fault ^ fault) & fault;
  events &= st->fault_mask;

  if (events & AD5421_FAULT_OVER_CURRENT) {
   iio_push_event(indio_dev,
    IIO_UNMOD_EVENT_CODE(IIO_CURRENT,
     0,
     IIO_EV_TYPE_THRESH,
     IIO_EV_DIR_RISING),
   iio_get_time_ns(indio_dev));
  }

  if (events & AD5421_FAULT_UNDER_CURRENT) {
   iio_push_event(indio_dev,
    IIO_UNMOD_EVENT_CODE(IIO_CURRENT,
     0,
     IIO_EV_TYPE_THRESH,
     IIO_EV_DIR_FALLING),
    iio_get_time_ns(indio_dev));
  }

  if (events & AD5421_FAULT_TEMP_OVER_140) {
   iio_push_event(indio_dev,
    IIO_UNMOD_EVENT_CODE(IIO_TEMP,
     0,
     IIO_EV_TYPE_MAG,
     IIO_EV_DIR_RISING),
    iio_get_time_ns(indio_dev));
  }

  old_fault = fault;
  fault = ad5421_read(indio_dev, AD5421_REG_FAULT);


  if (fault & AD5421_FAULT_TRIGGER_IRQ)
   msleep(1000);

 } while (fault & AD5421_FAULT_TRIGGER_IRQ);


 return IRQ_HANDLED;
}

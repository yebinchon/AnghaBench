
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IIO_EV_DIR_RISING ;
 int IIO_EV_TYPE_THRESH ;
 int IIO_TEMP ;
 int IIO_UNMOD_EVENT_CODE (int ,int ,int ,int ) ;
 int IRQ_HANDLED ;
 int iio_get_time_ns (void*) ;
 int iio_push_event (void*,int ,int ) ;

__attribute__((used)) static irqreturn_t ad5504_event_handler(int irq, void *private)
{
 iio_push_event(private,
         IIO_UNMOD_EVENT_CODE(IIO_TEMP,
         0,
         IIO_EV_TYPE_THRESH,
         IIO_EV_DIR_RISING),
         iio_get_time_ns(private));

 return IRQ_HANDLED;
}

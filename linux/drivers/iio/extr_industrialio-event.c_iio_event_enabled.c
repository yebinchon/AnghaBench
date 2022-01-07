
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_event_interface {int flags; } ;


 int IIO_BUSY_BIT_POS ;
 int test_bit (int ,int *) ;

bool iio_event_enabled(const struct iio_event_interface *ev_int)
{
 return !!test_bit(IIO_BUSY_BIT_POS, &ev_int->flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iio_event_interface {int read_lock; int wait; int det_events; } ;


 int INIT_KFIFO (int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void iio_setup_ev_int(struct iio_event_interface *ev_int)
{
 INIT_KFIFO(ev_int->det_events);
 init_waitqueue_head(&ev_int->wait);
 mutex_init(&ev_int->read_lock);
}

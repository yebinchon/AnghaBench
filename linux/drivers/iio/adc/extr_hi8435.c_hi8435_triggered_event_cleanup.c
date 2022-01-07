
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iio_triggered_event_cleanup (void*) ;

__attribute__((used)) static void hi8435_triggered_event_cleanup(void *data)
{
 iio_triggered_event_cleanup(data);
}

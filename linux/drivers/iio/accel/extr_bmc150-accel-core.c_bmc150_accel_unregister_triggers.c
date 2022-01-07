
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bmc150_accel_data {TYPE_1__* triggers; } ;
struct TYPE_2__ {int * indio_trig; } ;


 int iio_trigger_unregister (int *) ;

__attribute__((used)) static void bmc150_accel_unregister_triggers(struct bmc150_accel_data *data,
          int from)
{
 int i;

 for (i = from; i >= 0; i--) {
  if (data->triggers[i].indio_trig) {
   iio_trigger_unregister(data->triggers[i].indio_trig);
   data->triggers[i].indio_trig = ((void*)0);
  }
 }
}

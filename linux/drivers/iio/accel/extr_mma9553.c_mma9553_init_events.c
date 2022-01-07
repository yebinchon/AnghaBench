
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma9553_data {int num_events; TYPE_1__* events; } ;
struct TYPE_2__ {int enabled; int * info; } ;


 int MMA9553_EVENTS_INFO_SIZE ;
 int * mma9553_events_info ;

__attribute__((used)) static void mma9553_init_events(struct mma9553_data *data)
{
 int i;

 data->num_events = MMA9553_EVENTS_INFO_SIZE;
 for (i = 0; i < data->num_events; i++) {
  data->events[i].info = &mma9553_events_info[i];
  data->events[i].enabled = 0;
 }
}

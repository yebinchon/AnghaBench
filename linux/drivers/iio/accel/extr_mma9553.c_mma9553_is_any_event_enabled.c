
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mma9553_data {int num_events; TYPE_2__* events; } ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_4__ {scalar_t__ enabled; TYPE_1__* info; } ;
struct TYPE_3__ {int type; } ;



__attribute__((used)) static bool mma9553_is_any_event_enabled(struct mma9553_data *data,
      bool check_type,
      enum iio_chan_type type)
{
 int i;

 for (i = 0; i < data->num_events; i++)
  if ((check_type && data->events[i].info->type == type &&
       data->events[i].enabled) ||
       (!check_type && data->events[i].enabled))
   return 1;

 return 0;
}

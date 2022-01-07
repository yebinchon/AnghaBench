
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mma9553_event {TYPE_1__* info; } ;
struct mma9553_data {int num_events; struct mma9553_event* events; } ;
typedef enum iio_modifier { ____Placeholder_iio_modifier } iio_modifier ;
typedef enum iio_event_direction { ____Placeholder_iio_event_direction } iio_event_direction ;
typedef enum iio_chan_type { ____Placeholder_iio_chan_type } iio_chan_type ;
struct TYPE_2__ {int type; int mod; int dir; } ;



__attribute__((used)) static struct mma9553_event *mma9553_get_event(struct mma9553_data *data,
            enum iio_chan_type type,
            enum iio_modifier mod,
            enum iio_event_direction dir)
{
 int i;

 for (i = 0; i < data->num_events; i++)
  if (data->events[i].info->type == type &&
      data->events[i].info->mod == mod &&
      data->events[i].info->dir == dir)
   return &data->events[i];

 return ((void*)0);
}

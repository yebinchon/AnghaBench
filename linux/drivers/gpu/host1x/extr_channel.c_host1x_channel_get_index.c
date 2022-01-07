
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_channel {int refcount; } ;
struct TYPE_2__ {struct host1x_channel* channels; } ;
struct host1x {TYPE_1__ channel_list; } ;


 int kref_get_unless_zero (int *) ;

struct host1x_channel *host1x_channel_get_index(struct host1x *host,
      unsigned int index)
{
 struct host1x_channel *ch = &host->channel_list.channels[index];

 if (!kref_get_unless_zero(&ch->refcount))
  return ((void*)0);

 return ch;
}

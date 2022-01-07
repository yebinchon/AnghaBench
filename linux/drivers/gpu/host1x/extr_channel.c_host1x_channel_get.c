
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel {int refcount; } ;


 int kref_get (int *) ;

struct host1x_channel *host1x_channel_get(struct host1x_channel *channel)
{
 kref_get(&channel->refcount);

 return channel;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel {int refcount; } ;


 int kref_put (int *,int ) ;
 int release_channel ;

void host1x_channel_put(struct host1x_channel *channel)
{
 kref_put(&channel->refcount, release_channel);
}

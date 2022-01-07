
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct host1x_channel_list {struct host1x_channel* channels; int allocated_channels; } ;
struct host1x_channel {unsigned int id; } ;
struct host1x {int dev; TYPE_1__* info; struct host1x_channel_list channel_list; } ;
struct TYPE_2__ {unsigned int nb_channels; } ;


 int dev_err (int ,char*) ;
 unsigned int find_first_zero_bit (int ,unsigned int) ;
 int set_bit (unsigned int,int ) ;

__attribute__((used)) static struct host1x_channel *acquire_unused_channel(struct host1x *host)
{
 struct host1x_channel_list *chlist = &host->channel_list;
 unsigned int max_channels = host->info->nb_channels;
 unsigned int index;

 index = find_first_zero_bit(chlist->allocated_channels, max_channels);
 if (index >= max_channels) {
  dev_err(host->dev, "failed to find free channel\n");
  return ((void*)0);
 }

 chlist->channels[index].id = index;

 set_bit(index, chlist->allocated_channels);

 return &chlist->channels[index];
}

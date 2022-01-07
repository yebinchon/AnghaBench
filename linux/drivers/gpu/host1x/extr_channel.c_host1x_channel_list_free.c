
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel_list {int channels; int allocated_channels; } ;


 int kfree (int ) ;

void host1x_channel_list_free(struct host1x_channel_list *chlist)
{
 kfree(chlist->allocated_channels);
 kfree(chlist->channels);
}

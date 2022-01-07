
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_channel_list {void* allocated_channels; void* channels; } ;
struct host1x_channel {int dummy; } ;


 unsigned int BITS_TO_LONGS (unsigned int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_zero (void*,unsigned int) ;
 void* kcalloc (unsigned int,int,int ) ;
 int kfree (void*) ;

int host1x_channel_list_init(struct host1x_channel_list *chlist,
        unsigned int num_channels)
{
 chlist->channels = kcalloc(num_channels, sizeof(struct host1x_channel),
       GFP_KERNEL);
 if (!chlist->channels)
  return -ENOMEM;

 chlist->allocated_channels =
  kcalloc(BITS_TO_LONGS(num_channels), sizeof(unsigned long),
   GFP_KERNEL);
 if (!chlist->allocated_channels) {
  kfree(chlist->channels);
  return -ENOMEM;
 }

 bitmap_zero(chlist->allocated_channels, num_channels);

 return 0;
}

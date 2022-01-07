
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mux_ext_info_cache {scalar_t__ size; int data; } ;
struct mux_child {struct mux_ext_info_cache* ext_info_cache; } ;
struct mux {int cached_state; int control; int parent; struct iio_chan_spec* chan; struct mux_child* child; } ;
struct iio_chan_spec {scalar_t__ channel; TYPE_1__* ext_info; } ;
struct TYPE_2__ {char* name; } ;


 int iio_write_channel_ext_info (int ,char const*,int ,scalar_t__) ;
 int mux_control_deselect (int ) ;
 int mux_control_select (int ,scalar_t__) ;

__attribute__((used)) static int iio_mux_select(struct mux *mux, int idx)
{
 struct mux_child *child = &mux->child[idx];
 struct iio_chan_spec const *chan = &mux->chan[idx];
 int ret;
 int i;

 ret = mux_control_select(mux->control, chan->channel);
 if (ret < 0) {
  mux->cached_state = -1;
  return ret;
 }

 if (mux->cached_state == chan->channel)
  return 0;

 if (chan->ext_info) {
  for (i = 0; chan->ext_info[i].name; ++i) {
   const char *attr = chan->ext_info[i].name;
   struct mux_ext_info_cache *cache;

   cache = &child->ext_info_cache[i];

   if (cache->size < 0)
    continue;

   ret = iio_write_channel_ext_info(mux->parent, attr,
        cache->data,
        cache->size);

   if (ret < 0) {
    mux_control_deselect(mux->control);
    mux->cached_state = -1;
    return ret;
   }
  }
 }
 mux->cached_state = chan->channel;

 return 0;
}

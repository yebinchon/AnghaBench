
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct output {int dummy; } ;
struct host1x_channel {int dummy; } ;
struct host1x {TYPE_1__* info; } ;
struct TYPE_2__ {unsigned int nb_channels; } ;


 struct host1x_channel* host1x_channel_get_index (struct host1x*,unsigned int) ;
 int host1x_channel_put (struct host1x_channel*) ;
 int host1x_debug_output (struct output*,char*) ;
 int host1x_hw_show_mlocks (struct host1x*,struct output*) ;
 int show_channel (struct host1x_channel*,struct output*,int) ;
 int show_syncpts (struct host1x*,struct output*) ;

__attribute__((used)) static void show_all(struct host1x *m, struct output *o, bool show_fifo)
{
 unsigned int i;

 host1x_hw_show_mlocks(m, o);
 show_syncpts(m, o);
 host1x_debug_output(o, "---- channels ----\n");

 for (i = 0; i < m->info->nb_channels; ++i) {
  struct host1x_channel *ch = host1x_channel_get_index(m, i);

  if (ch) {
   show_channel(ch, o, show_fifo);
   host1x_channel_put(ch);
  }
 }
}

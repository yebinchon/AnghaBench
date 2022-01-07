
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct output {int dummy; } ;
struct TYPE_4__ {int lock; } ;
struct host1x_channel {TYPE_2__ cdma; TYPE_1__* dev; } ;
struct host1x {int dummy; } ;
struct TYPE_3__ {int parent; } ;


 struct host1x* dev_get_drvdata (int ) ;
 int host1x_hw_show_channel_cdma (struct host1x*,struct host1x_channel*,struct output*) ;
 int host1x_hw_show_channel_fifo (struct host1x*,struct host1x_channel*,struct output*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int show_channel(struct host1x_channel *ch, void *data, bool show_fifo)
{
 struct host1x *m = dev_get_drvdata(ch->dev->parent);
 struct output *o = data;

 mutex_lock(&ch->cdma.lock);

 if (show_fifo)
  host1x_hw_show_channel_fifo(m, ch, o);

 host1x_hw_show_channel_cdma(m, ch, o);

 mutex_unlock(&ch->cdma.lock);

 return 0;
}

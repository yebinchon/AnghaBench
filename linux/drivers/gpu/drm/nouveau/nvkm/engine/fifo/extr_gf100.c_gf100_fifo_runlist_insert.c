
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gf100_fifo_chan {int head; } ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_fifo {TYPE_3__ base; int chan; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
gf100_fifo_runlist_insert(struct gf100_fifo *fifo, struct gf100_fifo_chan *chan)
{
 mutex_lock(&fifo->base.engine.subdev.mutex);
 list_add_tail(&chan->head, &fifo->chan);
 mutex_unlock(&fifo->base.engine.subdev.mutex);
}

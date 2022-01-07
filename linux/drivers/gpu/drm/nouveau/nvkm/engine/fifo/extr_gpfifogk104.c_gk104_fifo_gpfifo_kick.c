
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* fifo; } ;
struct gk104_fifo_chan {TYPE_4__ base; } ;
struct TYPE_5__ {int mutex; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;


 int gk104_fifo_gpfifo_kick_locked (struct gk104_fifo_chan*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
gk104_fifo_gpfifo_kick(struct gk104_fifo_chan *chan)
{
 int ret;
 mutex_lock(&chan->base.fifo->engine.subdev.mutex);
 ret = gk104_fifo_gpfifo_kick_locked(chan);
 mutex_unlock(&chan->base.fifo->engine.subdev.mutex);
 return ret;
}

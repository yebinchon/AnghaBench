
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_sw_chan_func {int dummy; } ;
struct nvkm_sw_chan {int event; int head; struct nvkm_fifo_chan* fifo; struct nvkm_sw* sw; struct nvkm_sw_chan_func const* func; int object; } ;
struct TYPE_2__ {int lock; } ;
struct nvkm_sw {TYPE_1__ engine; int chan; } ;
struct nvkm_oclass {int dummy; } ;
struct nvkm_fifo_chan {int dummy; } ;


 int list_add (int *,int *) ;
 int nvkm_event_init (int *,int,int,int *) ;
 int nvkm_object_ctor (int *,struct nvkm_oclass const*,int *) ;
 int nvkm_sw_chan ;
 int nvkm_sw_chan_event ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
nvkm_sw_chan_ctor(const struct nvkm_sw_chan_func *func, struct nvkm_sw *sw,
    struct nvkm_fifo_chan *fifo, const struct nvkm_oclass *oclass,
    struct nvkm_sw_chan *chan)
{
 unsigned long flags;

 nvkm_object_ctor(&nvkm_sw_chan, oclass, &chan->object);
 chan->func = func;
 chan->sw = sw;
 chan->fifo = fifo;
 spin_lock_irqsave(&sw->engine.lock, flags);
 list_add(&chan->head, &sw->chan);
 spin_unlock_irqrestore(&sw->engine.lock, flags);

 return nvkm_event_init(&nvkm_sw_chan_event, 1, 1, &chan->event);
}

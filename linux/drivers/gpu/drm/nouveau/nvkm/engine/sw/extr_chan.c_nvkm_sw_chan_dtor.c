
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_sw_chan {int head; int event; TYPE_2__* func; struct nvkm_sw* sw; } ;
struct TYPE_3__ {int lock; } ;
struct nvkm_sw {TYPE_1__ engine; } ;
struct nvkm_object {int dummy; } ;
struct TYPE_4__ {void* (* dtor ) (struct nvkm_sw_chan*) ;} ;


 int list_del (int *) ;
 int nvkm_event_fini (int *) ;
 struct nvkm_sw_chan* nvkm_sw_chan (struct nvkm_object*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* stub1 (struct nvkm_sw_chan*) ;

__attribute__((used)) static void *
nvkm_sw_chan_dtor(struct nvkm_object *object)
{
 struct nvkm_sw_chan *chan = nvkm_sw_chan(object);
 struct nvkm_sw *sw = chan->sw;
 unsigned long flags;
 void *data = chan;

 if (chan->func->dtor)
  data = chan->func->dtor(chan);
 nvkm_event_fini(&chan->event);

 spin_lock_irqsave(&sw->engine.lock, flags);
 list_del(&chan->head);
 spin_unlock_irqrestore(&sw->engine.lock, flags);
 return data;
}

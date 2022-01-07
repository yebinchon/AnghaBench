
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nvkm_object {int dummy; } ;
struct nvkm_fifo_chan {TYPE_2__* inst; TYPE_2__* push; scalar_t__ vmm; scalar_t__ user; int head; int chid; TYPE_1__* func; struct nvkm_fifo* fifo; } ;
struct nvkm_fifo {int lock; int mask; } ;
struct TYPE_4__ {int memory; } ;
struct TYPE_3__ {void* (* dtor ) (struct nvkm_fifo_chan*) ;} ;


 int __clear_bit (int ,int ) ;
 int iounmap (scalar_t__) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 struct nvkm_fifo_chan* nvkm_fifo_chan (struct nvkm_object*) ;
 int nvkm_gpuobj_del (TYPE_2__**) ;
 int nvkm_vmm_part (scalar_t__,int ) ;
 int nvkm_vmm_unref (scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void* stub1 (struct nvkm_fifo_chan*) ;

__attribute__((used)) static void *
nvkm_fifo_chan_dtor(struct nvkm_object *object)
{
 struct nvkm_fifo_chan *chan = nvkm_fifo_chan(object);
 struct nvkm_fifo *fifo = chan->fifo;
 void *data = chan->func->dtor(chan);
 unsigned long flags;

 spin_lock_irqsave(&fifo->lock, flags);
 if (!list_empty(&chan->head)) {
  __clear_bit(chan->chid, fifo->mask);
  list_del(&chan->head);
 }
 spin_unlock_irqrestore(&fifo->lock, flags);

 if (chan->user)
  iounmap(chan->user);

 if (chan->vmm) {
  nvkm_vmm_part(chan->vmm, chan->inst->memory);
  nvkm_vmm_unref(&chan->vmm);
 }

 nvkm_gpuobj_del(&chan->push);
 nvkm_gpuobj_del(&chan->inst);
 return data;
}

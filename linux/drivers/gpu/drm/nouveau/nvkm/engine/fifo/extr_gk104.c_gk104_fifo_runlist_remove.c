
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_fifo_cgrp {int head; int chan_nr; } ;
struct gk104_fifo_chan {int head; struct nvkm_fifo_cgrp* cgrp; } ;
struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
gk104_fifo_runlist_remove(struct gk104_fifo *fifo, struct gk104_fifo_chan *chan)
{
 struct nvkm_fifo_cgrp *cgrp = chan->cgrp;
 mutex_lock(&fifo->base.engine.subdev.mutex);
 if (!list_empty(&chan->head)) {
  list_del_init(&chan->head);
  if (cgrp && !--cgrp->chan_nr)
   list_del_init(&cgrp->head);
 }
 mutex_unlock(&fifo->base.engine.subdev.mutex);
}

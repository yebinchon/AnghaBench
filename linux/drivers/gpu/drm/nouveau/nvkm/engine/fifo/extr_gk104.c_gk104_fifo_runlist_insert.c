
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nvkm_fifo_cgrp {int chan; int head; int chan_nr; } ;
struct gk104_fifo_chan {size_t runl; int head; struct nvkm_fifo_cgrp* cgrp; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_7__ {TYPE_2__ subdev; } ;
struct TYPE_8__ {TYPE_3__ engine; } ;
struct gk104_fifo {TYPE_4__ base; TYPE_1__* runlist; } ;
struct TYPE_5__ {int chan; int cgrp; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
gk104_fifo_runlist_insert(struct gk104_fifo *fifo, struct gk104_fifo_chan *chan)
{
 struct nvkm_fifo_cgrp *cgrp = chan->cgrp;
 mutex_lock(&fifo->base.engine.subdev.mutex);
 if (cgrp) {
  if (!cgrp->chan_nr++)
   list_add_tail(&cgrp->head, &fifo->runlist[chan->runl].cgrp);
  list_add_tail(&chan->head, &cgrp->chan);
 } else {
  list_add_tail(&chan->head, &fifo->runlist[chan->runl].chan);
 }
 mutex_unlock(&fifo->base.engine.subdev.mutex);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv50_fifo {TYPE_3__ base; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv50_fifo_runlist_update_locked (struct nv50_fifo*) ;

void
nv50_fifo_runlist_update(struct nv50_fifo *fifo)
{
 mutex_lock(&fifo->base.engine.subdev.mutex);
 nv50_fifo_runlist_update_locked(fifo);
 mutex_unlock(&fifo->base.engine.subdev.mutex);
}

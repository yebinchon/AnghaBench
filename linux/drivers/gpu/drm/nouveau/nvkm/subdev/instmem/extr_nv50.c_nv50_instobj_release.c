
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nvkm_subdev {int mutex; TYPE_2__* device; } ;
struct nvkm_memory {int dummy; } ;
struct TYPE_9__ {int * ptrs; } ;
struct TYPE_10__ {TYPE_3__ memory; } ;
struct TYPE_11__ {int next; } ;
struct nv50_instobj {TYPE_4__ base; TYPE_5__ lru; scalar_t__ map; int maps; struct nv50_instmem* imem; } ;
struct TYPE_7__ {struct nvkm_subdev subdev; } ;
struct nv50_instmem {int lru; TYPE_1__ base; } ;
struct TYPE_8__ {int bar; } ;


 int BUG_ON (int) ;
 scalar_t__ likely (int ) ;
 int list_add_tail (TYPE_5__*,int *) ;
 int list_empty (TYPE_5__*) ;
 int mutex_unlock (int *) ;
 struct nv50_instobj* nv50_instobj (struct nvkm_memory*) ;
 int nvkm_bar_flush (int ) ;
 scalar_t__ refcount_dec_and_mutex_lock (int *,int *) ;
 int wmb () ;

__attribute__((used)) static void
nv50_instobj_release(struct nvkm_memory *memory)
{
 struct nv50_instobj *iobj = nv50_instobj(memory);
 struct nv50_instmem *imem = iobj->imem;
 struct nvkm_subdev *subdev = &imem->base.subdev;

 wmb();
 nvkm_bar_flush(subdev->device->bar);

 if (refcount_dec_and_mutex_lock(&iobj->maps, &subdev->mutex)) {



  if (likely(iobj->lru.next) && iobj->map) {
   BUG_ON(!list_empty(&iobj->lru));
   list_add_tail(&iobj->lru, &imem->lru);
  }


  iobj->base.memory.ptrs = ((void*)0);
  mutex_unlock(&subdev->mutex);
 }
}

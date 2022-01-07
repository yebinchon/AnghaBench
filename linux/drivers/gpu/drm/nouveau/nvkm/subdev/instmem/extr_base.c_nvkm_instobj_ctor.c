
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory_func {int dummy; } ;
struct nvkm_instobj {int head; int * suspend; int memory; } ;
struct nvkm_instmem {int lock; int list; } ;


 int list_add_tail (int *,int *) ;
 int nvkm_memory_ctor (struct nvkm_memory_func const*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nvkm_instobj_ctor(const struct nvkm_memory_func *func,
    struct nvkm_instmem *imem, struct nvkm_instobj *iobj)
{
 nvkm_memory_ctor(func, &iobj->memory);
 iobj->suspend = ((void*)0);
 spin_lock(&imem->lock);
 list_add_tail(&iobj->head, &imem->list);
 spin_unlock(&imem->lock);
}

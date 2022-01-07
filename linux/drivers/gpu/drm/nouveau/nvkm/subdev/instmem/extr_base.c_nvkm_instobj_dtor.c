
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_instobj {int head; } ;
struct nvkm_instmem {int lock; } ;


 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
nvkm_instobj_dtor(struct nvkm_instmem *imem, struct nvkm_instobj *iobj)
{
 spin_lock(&imem->lock);
 list_del(&iobj->head);
 spin_unlock(&imem->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_ramht {int gpuobj; } ;


 int nvkm_gpuobj_del (int *) ;
 int vfree (struct nvkm_ramht*) ;

void
nvkm_ramht_del(struct nvkm_ramht **pramht)
{
 struct nvkm_ramht *ramht = *pramht;
 if (ramht) {
  nvkm_gpuobj_del(&ramht->gpuobj);
  vfree(*pramht);
  *pramht = ((void*)0);
 }
}

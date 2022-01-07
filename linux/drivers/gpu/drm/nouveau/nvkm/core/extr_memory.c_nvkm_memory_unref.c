
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory {int kref; } ;


 int kref_put (int *,int ) ;
 int nvkm_memory_del ;

void
nvkm_memory_unref(struct nvkm_memory **pmemory)
{
 struct nvkm_memory *memory = *pmemory;
 if (memory) {
  kref_put(&memory->kref, nvkm_memory_del);
  *pmemory = ((void*)0);
 }
}

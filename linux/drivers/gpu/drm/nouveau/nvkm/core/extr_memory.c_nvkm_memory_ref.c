
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory {int kref; } ;


 int kref_get (int *) ;

struct nvkm_memory *
nvkm_memory_ref(struct nvkm_memory *memory)
{
 if (memory)
  kref_get(&memory->kref);
 return memory;
}

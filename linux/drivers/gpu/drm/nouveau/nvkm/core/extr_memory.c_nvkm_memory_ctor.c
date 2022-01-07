
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory_func {int dummy; } ;
struct nvkm_memory {int kref; struct nvkm_memory_func const* func; } ;


 int kref_init (int *) ;

void
nvkm_memory_ctor(const struct nvkm_memory_func *func,
   struct nvkm_memory *memory)
{
 memory->func = func;
 kref_init(&memory->kref);
}

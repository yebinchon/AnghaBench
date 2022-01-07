
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory {int dummy; } ;
struct nvkm_gpuobj {int size; int addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct nvkm_gpuobj* kzalloc (int,int ) ;
 int nvkm_memory_addr (struct nvkm_memory*) ;
 int nvkm_memory_size (struct nvkm_memory*) ;

int
nvkm_gpuobj_wrap(struct nvkm_memory *memory, struct nvkm_gpuobj **pgpuobj)
{
 if (!(*pgpuobj = kzalloc(sizeof(**pgpuobj), GFP_KERNEL)))
  return -ENOMEM;

 (*pgpuobj)->addr = nvkm_memory_addr(memory);
 (*pgpuobj)->size = nvkm_memory_size(memory);
 return 0;
}

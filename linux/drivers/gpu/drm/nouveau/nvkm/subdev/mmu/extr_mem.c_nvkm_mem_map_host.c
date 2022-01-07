
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory {int dummy; } ;
struct nvkm_mem {int pages; scalar_t__ mem; } ;


 int EFAULT ;
 int EINVAL ;
 int PAGE_KERNEL ;
 int VM_MAP ;
 struct nvkm_mem* nvkm_mem (struct nvkm_memory*) ;
 void* vmap (scalar_t__,int ,int ,int ) ;

int
nvkm_mem_map_host(struct nvkm_memory *memory, void **pmap)
{
 struct nvkm_mem *mem = nvkm_mem(memory);
 if (mem->mem) {
  *pmap = vmap(mem->mem, mem->pages, VM_MAP, PAGE_KERNEL);
  return *pmap ? 0 : -EFAULT;
 }
 return -EINVAL;
}

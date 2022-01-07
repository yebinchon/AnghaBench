
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_memory {int dummy; } ;
struct TYPE_2__ {int pages; } ;


 int PAGE_SHIFT ;
 TYPE_1__* nvkm_mem (struct nvkm_memory*) ;

__attribute__((used)) static u64
nvkm_mem_size(struct nvkm_memory *memory)
{
 return nvkm_mem(memory)->pages << PAGE_SHIFT;
}

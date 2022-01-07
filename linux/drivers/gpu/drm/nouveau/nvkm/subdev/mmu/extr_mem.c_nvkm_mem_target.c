
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_memory {int dummy; } ;
typedef enum nvkm_memory_target { ____Placeholder_nvkm_memory_target } nvkm_memory_target ;
struct TYPE_2__ {int target; } ;


 TYPE_1__* nvkm_mem (struct nvkm_memory*) ;

__attribute__((used)) static enum nvkm_memory_target
nvkm_mem_target(struct nvkm_memory *memory)
{
 return nvkm_mem(memory)->target;
}

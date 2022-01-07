
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_memory {int dummy; } ;
typedef enum nvkm_memory_target { ____Placeholder_nvkm_memory_target } nvkm_memory_target ;


 int NVKM_MEM_TARGET_NCOH ;

__attribute__((used)) static enum nvkm_memory_target
gk20a_instobj_target(struct nvkm_memory *memory)
{
 return NVKM_MEM_TARGET_NCOH;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_gpuobj {int memory; } ;


 int nvkm_ro32 (int ,int ) ;

__attribute__((used)) static u32
nvkm_gpuobj_heap_rd32(struct nvkm_gpuobj *gpuobj, u32 offset)
{
 return nvkm_ro32(gpuobj->memory, offset);
}

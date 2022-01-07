
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_gpuobj {int memory; } ;


 int nvkm_wo32 (int ,int ,int ) ;

__attribute__((used)) static void
nvkm_gpuobj_heap_wr32(struct nvkm_gpuobj *gpuobj, u32 offset, u32 data)
{
 nvkm_wo32(gpuobj->memory, offset, data);
}

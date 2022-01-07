
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_gpuobj {scalar_t__ map; } ;


 scalar_t__ ioread32_native (scalar_t__) ;

__attribute__((used)) static u32
nvkm_gpuobj_rd32_fast(struct nvkm_gpuobj *gpuobj, u32 offset)
{
 return ioread32_native(gpuobj->map + offset);
}

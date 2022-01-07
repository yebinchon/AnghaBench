
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvkm_gpuobj {scalar_t__ map; } ;


 int iowrite32_native (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
nvkm_gpuobj_wr32_fast(struct nvkm_gpuobj *gpuobj, u32 offset, u32 data)
{
 iowrite32_native(data, gpuobj->map + offset);
}

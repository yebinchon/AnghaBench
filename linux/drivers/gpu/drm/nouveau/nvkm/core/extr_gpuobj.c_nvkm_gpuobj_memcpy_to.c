
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_gpuobj {int dummy; } ;


 int nvkm_wo32 (struct nvkm_gpuobj*,int,int) ;

void
nvkm_gpuobj_memcpy_to(struct nvkm_gpuobj *dst, u32 dstoffset, void *src,
        u32 length)
{
 int i;

 for (i = 0; i < length; i += 4)
  nvkm_wo32(dst, dstoffset + i, *(u32 *)(src + i));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_instmem {int dummy; } ;
struct TYPE_2__ {scalar_t__ iomem; } ;


 int iowrite32_native (scalar_t__,scalar_t__) ;
 TYPE_1__* nv40_instmem (struct nvkm_instmem*) ;

__attribute__((used)) static void
nv40_instmem_wr32(struct nvkm_instmem *base, u32 addr, u32 data)
{
 iowrite32_native(data, nv40_instmem(base)->iomem + addr);
}

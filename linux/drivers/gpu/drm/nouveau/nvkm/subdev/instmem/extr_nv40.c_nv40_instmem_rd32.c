
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nvkm_instmem {int dummy; } ;
struct TYPE_2__ {scalar_t__ iomem; } ;


 scalar_t__ ioread32_native (scalar_t__) ;
 TYPE_1__* nv40_instmem (struct nvkm_instmem*) ;

__attribute__((used)) static u32
nv40_instmem_rd32(struct nvkm_instmem *base, u32 addr)
{
 return ioread32_native(nv40_instmem(base)->iomem + addr);
}

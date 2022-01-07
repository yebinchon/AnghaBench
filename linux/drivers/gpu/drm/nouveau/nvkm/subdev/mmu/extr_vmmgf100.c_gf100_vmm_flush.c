
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvkm_vmm {int * engref; } ;


 size_t NVKM_SUBDEV_BAR ;
 scalar_t__ atomic_read (int *) ;
 int gf100_vmm_invalidate (struct nvkm_vmm*,int) ;

void
gf100_vmm_flush(struct nvkm_vmm *vmm, int depth)
{
 u32 type = 0x00000001;
 if (atomic_read(&vmm->engref[NVKM_SUBDEV_BAR]))
  type |= 0x00000004;
 gf100_vmm_invalidate(vmm, type);
}

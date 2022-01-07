
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct nvkm_vmm {TYPE_2__* mmu; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;


 int nvkm_wr32 (struct nvkm_device*,int,int ) ;

void
gf100_vmm_invalidate_pdb(struct nvkm_vmm *vmm, u64 addr)
{
 struct nvkm_device *device = vmm->mmu->subdev.device;
 nvkm_wr32(device, 0x100cb8, addr);
}

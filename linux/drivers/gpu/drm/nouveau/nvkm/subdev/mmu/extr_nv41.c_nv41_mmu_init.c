
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct nvkm_device* device; } ;
struct nvkm_mmu {TYPE_4__* vmm; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* pd; } ;
struct TYPE_7__ {TYPE_2__** pt; } ;
struct TYPE_6__ {int addr; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
nv41_mmu_init(struct nvkm_mmu *mmu)
{
 struct nvkm_device *device = mmu->subdev.device;
 nvkm_wr32(device, 0x100800, 0x00000002 | mmu->vmm->pd->pt[0]->addr);
 nvkm_mask(device, 0x10008c, 0x00000100, 0x00000100);
 nvkm_wr32(device, 0x100820, 0x00000000);
}

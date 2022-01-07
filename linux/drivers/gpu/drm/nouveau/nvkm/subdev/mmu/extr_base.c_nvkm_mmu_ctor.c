
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user; } ;
struct nvkm_mmu_func {TYPE_1__ mmu; int dma_bits; } ;
struct TYPE_4__ {int base; int ctor; } ;
struct nvkm_mmu {TYPE_2__ user; int dma_bits; struct nvkm_mmu_func const* func; int subdev; } ;
struct nvkm_device {int dummy; } ;


 int nvkm_mmu ;
 int nvkm_mmu_ptc_init (struct nvkm_mmu*) ;
 int nvkm_subdev_ctor (int *,struct nvkm_device*,int,int *) ;
 int nvkm_ummu_new ;

void
nvkm_mmu_ctor(const struct nvkm_mmu_func *func, struct nvkm_device *device,
       int index, struct nvkm_mmu *mmu)
{
 nvkm_subdev_ctor(&nvkm_mmu, device, index, &mmu->subdev);
 mmu->func = func;
 mmu->dma_bits = func->dma_bits;
 nvkm_mmu_ptc_init(mmu);
 mmu->user.ctor = nvkm_ummu_new;
 mmu->user.base = func->mmu.user;
}

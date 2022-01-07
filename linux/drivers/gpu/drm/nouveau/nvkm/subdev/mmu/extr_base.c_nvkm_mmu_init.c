
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvkm_subdev {int dummy; } ;
struct nvkm_mmu {TYPE_1__* func; } ;
struct TYPE_2__ {int (* init ) (struct nvkm_mmu*) ;} ;


 struct nvkm_mmu* nvkm_mmu (struct nvkm_subdev*) ;
 int stub1 (struct nvkm_mmu*) ;

__attribute__((used)) static int
nvkm_mmu_init(struct nvkm_subdev *subdev)
{
 struct nvkm_mmu *mmu = nvkm_mmu(subdev);
 if (mmu->func->init)
  mmu->func->init(mmu);
 return 0;
}

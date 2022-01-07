
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvif_mmu {TYPE_2__* type; } ;
struct TYPE_6__ {size_t* type_host; } ;
struct TYPE_4__ {struct nvif_mmu mmu; } ;
struct nouveau_drm {TYPE_3__ ttm; TYPE_1__ client; } ;
struct TYPE_5__ {int type; } ;


 int NVIF_MEM_UNCACHED ;

__attribute__((used)) static inline bool
nouveau_drm_use_coherent_gpu_mapping(struct nouveau_drm *drm)
{
 struct nvif_mmu *mmu = &drm->client.mmu;
 return !(mmu->type[drm->ttm.type_host[0]].type & NVIF_MEM_UNCACHED);
}

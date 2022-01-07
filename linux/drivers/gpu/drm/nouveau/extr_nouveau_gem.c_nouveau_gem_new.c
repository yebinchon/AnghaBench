
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_1__ info; } ;
struct TYPE_8__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_3__ client; int dev; } ;
struct nouveau_cli {struct nouveau_drm* drm; } ;
struct TYPE_10__ {int filp; } ;
struct TYPE_9__ {TYPE_5__ base; int persistent_swap_storage; } ;
struct nouveau_bo {int valid_domains; TYPE_4__ bo; } ;


 scalar_t__ IS_ERR (struct nouveau_bo*) ;
 int NOUVEAU_GEM_DOMAIN_COHERENT ;
 int NOUVEAU_GEM_DOMAIN_CPU ;
 int NOUVEAU_GEM_DOMAIN_GART ;
 int NOUVEAU_GEM_DOMAIN_VRAM ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int PTR_ERR (struct nouveau_bo*) ;
 int TTM_PL_FLAG_SYSTEM ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_UNCACHED ;
 int TTM_PL_FLAG_VRAM ;
 int drm_gem_object_init (int ,TYPE_5__*,int ) ;
 struct nouveau_bo* nouveau_bo_alloc (struct nouveau_cli*,int *,int*,int ,int,int) ;
 int nouveau_bo_init (struct nouveau_bo*,int ,int,int ,int *,int *) ;
 int nouveau_bo_ref (int *,struct nouveau_bo**) ;

int
nouveau_gem_new(struct nouveau_cli *cli, u64 size, int align, uint32_t domain,
  uint32_t tile_mode, uint32_t tile_flags,
  struct nouveau_bo **pnvbo)
{
 struct nouveau_drm *drm = cli->drm;
 struct nouveau_bo *nvbo;
 u32 flags = 0;
 int ret;

 if (domain & NOUVEAU_GEM_DOMAIN_VRAM)
  flags |= TTM_PL_FLAG_VRAM;
 if (domain & NOUVEAU_GEM_DOMAIN_GART)
  flags |= TTM_PL_FLAG_TT;
 if (!flags || domain & NOUVEAU_GEM_DOMAIN_CPU)
  flags |= TTM_PL_FLAG_SYSTEM;

 if (domain & NOUVEAU_GEM_DOMAIN_COHERENT)
  flags |= TTM_PL_FLAG_UNCACHED;

 nvbo = nouveau_bo_alloc(cli, &size, &align, flags, tile_mode,
    tile_flags);
 if (IS_ERR(nvbo))
  return PTR_ERR(nvbo);



 ret = drm_gem_object_init(drm->dev, &nvbo->bo.base, size);
 if (ret) {
  nouveau_bo_ref(((void*)0), &nvbo);
  return ret;
 }

 ret = nouveau_bo_init(nvbo, size, align, flags, ((void*)0), ((void*)0));
 if (ret) {
  nouveau_bo_ref(((void*)0), &nvbo);
  return ret;
 }





 nvbo->valid_domains = NOUVEAU_GEM_DOMAIN_VRAM |
         NOUVEAU_GEM_DOMAIN_GART;
 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA)
  nvbo->valid_domains &= domain;

 nvbo->bo.persistent_swap_storage = nvbo->bo.base.filp;
 *pnvbo = nvbo;
 return 0;
}


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
struct TYPE_10__ {int mem_type; int size; } ;
struct ttm_buffer_object {TYPE_5__ mem; int bdev; } ;
struct TYPE_9__ {int gart_available; int vram_available; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_7__ {TYPE_1__ info; } ;
struct TYPE_8__ {TYPE_2__ device; } ;
struct nouveau_drm {TYPE_4__ gem; TYPE_3__ client; } ;
struct nouveau_bo {int contig; scalar_t__ pin_refcnt; struct ttm_buffer_object bo; } ;


 int EBUSY ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 int NV_ERROR (struct nouveau_drm*,char*,struct ttm_buffer_object*,int,int) ;
 int TTM_PL_FLAG_TT ;
 int TTM_PL_FLAG_VRAM ;


 struct nouveau_drm* nouveau_bdev (int ) ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int,int ) ;
 int nouveau_bo_validate (struct nouveau_bo*,int,int) ;
 int ttm_bo_reserve (struct ttm_buffer_object*,int,int,int *) ;
 int ttm_bo_unreserve (struct ttm_buffer_object*) ;

int
nouveau_bo_pin(struct nouveau_bo *nvbo, uint32_t memtype, bool contig)
{
 struct nouveau_drm *drm = nouveau_bdev(nvbo->bo.bdev);
 struct ttm_buffer_object *bo = &nvbo->bo;
 bool force = 0, evict = 0;
 int ret;

 ret = ttm_bo_reserve(bo, 0, 0, ((void*)0));
 if (ret)
  return ret;

 if (drm->client.device.info.family >= NV_DEVICE_INFO_V0_TESLA &&
     memtype == TTM_PL_FLAG_VRAM && contig) {
  if (!nvbo->contig) {
   nvbo->contig = 1;
   force = 1;
   evict = 1;
  }
 }

 if (nvbo->pin_refcnt) {
  if (!(memtype & (1 << bo->mem.mem_type)) || evict) {
   NV_ERROR(drm, "bo %p pinned elsewhere: "
          "0x%08x vs 0x%08x\n", bo,
     1 << bo->mem.mem_type, memtype);
   ret = -EBUSY;
  }
  nvbo->pin_refcnt++;
  goto out;
 }

 if (evict) {
  nouveau_bo_placement_set(nvbo, TTM_PL_FLAG_TT, 0);
  ret = nouveau_bo_validate(nvbo, 0, 0);
  if (ret)
   goto out;
 }

 nvbo->pin_refcnt++;
 nouveau_bo_placement_set(nvbo, memtype, 0);





 nvbo->pin_refcnt--;
 ret = nouveau_bo_validate(nvbo, 0, 0);
 if (ret)
  goto out;
 nvbo->pin_refcnt++;

 switch (bo->mem.mem_type) {
 case 128:
  drm->gem.vram_available -= bo->mem.size;
  break;
 case 129:
  drm->gem.gart_available -= bo->mem.size;
  break;
 default:
  break;
 }

out:
 if (force && ret)
  nvbo->contig = 0;
 ttm_bo_unreserve(bo);
 return ret;
}

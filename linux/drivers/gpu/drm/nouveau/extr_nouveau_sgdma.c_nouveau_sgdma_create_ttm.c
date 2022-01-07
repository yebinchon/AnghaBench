
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ttm_tt {int * func; } ;
struct ttm_buffer_object {int bdev; } ;
struct TYPE_8__ {struct ttm_tt ttm; } ;
struct nouveau_sgdma_be {TYPE_4__ ttm; } ;
struct TYPE_6__ {scalar_t__ family; } ;
struct TYPE_5__ {TYPE_2__ info; } ;
struct TYPE_7__ {TYPE_1__ device; } ;
struct nouveau_drm {TYPE_3__ client; } ;


 int GFP_KERNEL ;
 scalar_t__ NV_DEVICE_INFO_V0_TESLA ;
 struct nouveau_sgdma_be* kzalloc (int,int ) ;
 struct nouveau_drm* nouveau_bdev (int ) ;
 int nv04_sgdma_backend ;
 int nv50_sgdma_backend ;
 scalar_t__ ttm_dma_tt_init (TYPE_4__*,struct ttm_buffer_object*,int ) ;

struct ttm_tt *
nouveau_sgdma_create_ttm(struct ttm_buffer_object *bo, uint32_t page_flags)
{
 struct nouveau_drm *drm = nouveau_bdev(bo->bdev);
 struct nouveau_sgdma_be *nvbe;

 nvbe = kzalloc(sizeof(*nvbe), GFP_KERNEL);
 if (!nvbe)
  return ((void*)0);

 if (drm->client.device.info.family < NV_DEVICE_INFO_V0_TESLA)
  nvbe->ttm.ttm.func = &nv04_sgdma_backend;
 else
  nvbe->ttm.ttm.func = &nv50_sgdma_backend;

 if (ttm_dma_tt_init(&nvbe->ttm, bo, page_flags))





  return ((void*)0);
 return &nvbe->ttm.ttm;
}

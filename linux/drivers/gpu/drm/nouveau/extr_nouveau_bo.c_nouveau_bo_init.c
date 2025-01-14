
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sg_table {int dummy; } ;
struct TYPE_3__ {int num_pages; } ;
struct TYPE_4__ {int bdev; TYPE_1__ mem; } ;
struct nouveau_bo {int placement; TYPE_2__ bo; } ;
struct dma_resv {int dummy; } ;


 int PAGE_SHIFT ;
 int nouveau_bo_del_ttm ;
 int nouveau_bo_placement_set (struct nouveau_bo*,int ,int ) ;
 size_t ttm_bo_dma_acc_size (int ,int,int) ;
 int ttm_bo_init (int ,TYPE_2__*,int,int,int *,int,int,size_t,struct sg_table*,struct dma_resv*,int ) ;
 int ttm_bo_type_device ;
 int ttm_bo_type_sg ;

int
nouveau_bo_init(struct nouveau_bo *nvbo, u64 size, int align, u32 flags,
  struct sg_table *sg, struct dma_resv *robj)
{
 int type = sg ? ttm_bo_type_sg : ttm_bo_type_device;
 size_t acc_size;
 int ret;

 acc_size = ttm_bo_dma_acc_size(nvbo->bo.bdev, size, sizeof(*nvbo));

 nvbo->bo.mem.num_pages = size >> PAGE_SHIFT;
 nouveau_bo_placement_set(nvbo, flags, 0);

 ret = ttm_bo_init(nvbo->bo.bdev, &nvbo->bo, size, type,
     &nvbo->placement, align >> PAGE_SHIFT, 0,
     acc_size, sg, robj, nouveau_bo_del_ttm);
 if (ret) {

  return ret;
 }

 return 0;
}

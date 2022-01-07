
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qxl_surface {int dummy; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {int bdev; } ;
struct qxl_device {TYPE_3__ ddev; TYPE_1__ mman; } ;
struct TYPE_5__ {int base; } ;
struct qxl_bo {int pin_count; int placement; TYPE_2__ tbo; struct qxl_surface surf; int list; scalar_t__ surface_id; int type; } ;
typedef enum ttm_bo_type { ____Placeholder_ttm_bo_type } ttm_bo_type ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int dev_err (int ,char*,unsigned long,int ) ;
 int drm_gem_object_init (TYPE_3__*,int *,unsigned long) ;
 int kfree (struct qxl_bo*) ;
 struct qxl_bo* kzalloc (int,int ) ;
 int qxl_ttm_bo_destroy ;
 int qxl_ttm_placement_from_domain (struct qxl_bo*,int ,int) ;
 unsigned long roundup (unsigned long,int ) ;
 int ttm_bo_init (int *,TYPE_2__*,unsigned long,int,int *,int ,int,unsigned long,int *,int *,int *) ;
 int ttm_bo_type_device ;
 int ttm_bo_type_kernel ;
 scalar_t__ unlikely (int) ;

int qxl_bo_create(struct qxl_device *qdev,
    unsigned long size, bool kernel, bool pinned, u32 domain,
    struct qxl_surface *surf,
    struct qxl_bo **bo_ptr)
{
 struct qxl_bo *bo;
 enum ttm_bo_type type;
 int r;

 if (kernel)
  type = ttm_bo_type_kernel;
 else
  type = ttm_bo_type_device;
 *bo_ptr = ((void*)0);
 bo = kzalloc(sizeof(struct qxl_bo), GFP_KERNEL);
 if (bo == ((void*)0))
  return -ENOMEM;
 size = roundup(size, PAGE_SIZE);
 r = drm_gem_object_init(&qdev->ddev, &bo->tbo.base, size);
 if (unlikely(r)) {
  kfree(bo);
  return r;
 }
 bo->type = domain;
 bo->pin_count = pinned ? 1 : 0;
 bo->surface_id = 0;
 INIT_LIST_HEAD(&bo->list);

 if (surf)
  bo->surf = *surf;

 qxl_ttm_placement_from_domain(bo, domain, pinned);

 r = ttm_bo_init(&qdev->mman.bdev, &bo->tbo, size, type,
   &bo->placement, 0, !kernel, size,
   ((void*)0), ((void*)0), &qxl_ttm_bo_destroy);
 if (unlikely(r != 0)) {
  if (r != -ERESTARTSYS)
   dev_err(qdev->ddev.dev,
    "object_init failed for (%lu, 0x%08X)\n",
    size, domain);
  return r;
 }
 *bo_ptr = bo;
 return 0;
}

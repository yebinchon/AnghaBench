
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * resv; int _resv; int vma_node; } ;
struct TYPE_5__ {int placement; } ;
struct ttm_buffer_object {TYPE_4__ base; scalar_t__ acc_size; int * destroy; int kref; int list_kref; int cpu_writers; int * moving; int wu_mutex; int io_reserve_lru; int swap; int lru; int ddestroy; TYPE_3__* bdev; TYPE_1__ mem; } ;
struct ttm_transfer_obj {struct ttm_buffer_object base; struct ttm_buffer_object* bo; } ;
struct TYPE_7__ {TYPE_2__* glob; } ;
struct TYPE_6__ {int bo_count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TTM_PL_FLAG_NO_EVICT ;
 int WARN_ON (int) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int dma_resv_init (int *) ;
 int dma_resv_trylock (int *) ;
 int drm_vma_node_reset (int *) ;
 struct ttm_transfer_obj* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;
 int ttm_bo_get (struct ttm_buffer_object*) ;
 int ttm_transfered_destroy ;

__attribute__((used)) static int ttm_buffer_object_transfer(struct ttm_buffer_object *bo,
          struct ttm_buffer_object **new_obj)
{
 struct ttm_transfer_obj *fbo;
 int ret;

 fbo = kmalloc(sizeof(*fbo), GFP_KERNEL);
 if (!fbo)
  return -ENOMEM;

 fbo->base = *bo;
 fbo->base.mem.placement |= TTM_PL_FLAG_NO_EVICT;

 ttm_bo_get(bo);
 fbo->bo = bo;






 atomic_inc(&bo->bdev->glob->bo_count);
 INIT_LIST_HEAD(&fbo->base.ddestroy);
 INIT_LIST_HEAD(&fbo->base.lru);
 INIT_LIST_HEAD(&fbo->base.swap);
 INIT_LIST_HEAD(&fbo->base.io_reserve_lru);
 mutex_init(&fbo->base.wu_mutex);
 fbo->base.moving = ((void*)0);
 drm_vma_node_reset(&fbo->base.base.vma_node);
 atomic_set(&fbo->base.cpu_writers, 0);

 kref_init(&fbo->base.list_kref);
 kref_init(&fbo->base.kref);
 fbo->base.destroy = &ttm_transfered_destroy;
 fbo->base.acc_size = 0;
 fbo->base.base.resv = &fbo->base.base._resv;
 dma_resv_init(fbo->base.base.resv);
 ret = dma_resv_trylock(fbo->base.base.resv);
 WARN_ON(!ret);

 *new_obj = &fbo->base;
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {TYPE_1__ base; } ;
struct TYPE_6__ {struct ttm_buffer_object base; } ;
struct TYPE_5__ {int base; } ;
struct vmw_user_buffer_object {TYPE_3__ vbo; TYPE_2__ prime; } ;
struct ttm_object_file {int dummy; } ;


 int EBUSY ;
 int MAX_SCHEDULE_TIMEOUT ;
 int TTM_REF_SYNCCPU_WRITE ;
 long dma_resv_wait_timeout_rcu (int ,int,int,int ) ;
 int drm_vmw_synccpu_allow_cs ;
 int drm_vmw_synccpu_dontblock ;
 int ttm_bo_synccpu_write_grab (struct ttm_buffer_object*,int) ;
 int ttm_bo_synccpu_write_release (struct ttm_buffer_object*) ;
 int ttm_ref_object_add (struct ttm_object_file*,int *,int ,int*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int vmw_user_bo_synccpu_grab(struct vmw_user_buffer_object *user_bo,
        struct ttm_object_file *tfile,
        uint32_t flags)
{
 struct ttm_buffer_object *bo = &user_bo->vbo.base;
 bool existed;
 int ret;

 if (flags & drm_vmw_synccpu_allow_cs) {
  bool nonblock = !!(flags & drm_vmw_synccpu_dontblock);
  long lret;

  lret = dma_resv_wait_timeout_rcu
   (bo->base.resv, 1, 1,
    nonblock ? 0 : MAX_SCHEDULE_TIMEOUT);
  if (!lret)
   return -EBUSY;
  else if (lret < 0)
   return lret;
  return 0;
 }

 ret = ttm_bo_synccpu_write_grab
  (bo, !!(flags & drm_vmw_synccpu_dontblock));
 if (unlikely(ret != 0))
  return ret;

 ret = ttm_ref_object_add(tfile, &user_bo->prime.base,
     TTM_REF_SYNCCPU_WRITE, &existed, 0);
 if (ret != 0 || existed)
  ttm_bo_synccpu_write_release(&user_bo->vbo.base);

 return ret;
}

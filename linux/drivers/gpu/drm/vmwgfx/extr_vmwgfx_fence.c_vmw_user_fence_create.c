
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct vmw_fence_obj {int dummy; } ;
struct TYPE_4__ {int handle; } ;
struct vmw_user_fence {struct vmw_fence_obj fence; TYPE_2__ base; } ;
struct vmw_fence_manager {int user_fence_size; int dev_priv; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct ttm_object_file {int dummy; } ;
struct ttm_mem_global {int dummy; } ;
struct drm_file {int dummy; } ;
struct TYPE_3__ {struct ttm_object_file* tfile; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int VMW_RES_FENCE ;
 int kfree (struct vmw_user_fence*) ;
 struct vmw_user_fence* kzalloc (int,int ) ;
 int ttm_base_object_init (struct ttm_object_file*,TYPE_2__*,int,int ,int *,int *) ;
 int ttm_mem_global_alloc (struct ttm_mem_global*,int ,struct ttm_operation_ctx*) ;
 int ttm_mem_global_free (struct ttm_mem_global*,int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_fence_obj_init (struct vmw_fence_manager*,struct vmw_fence_obj*,int ,int ) ;
 struct vmw_fence_obj* vmw_fence_obj_reference (struct vmw_fence_obj*) ;
 int vmw_fence_obj_unreference (struct vmw_fence_obj**) ;
 TYPE_1__* vmw_fpriv (struct drm_file*) ;
 struct ttm_mem_global* vmw_mem_glob (int ) ;
 int vmw_user_fence_base_release ;
 int vmw_user_fence_destroy ;

int vmw_user_fence_create(struct drm_file *file_priv,
     struct vmw_fence_manager *fman,
     uint32_t seqno,
     struct vmw_fence_obj **p_fence,
     uint32_t *p_handle)
{
 struct ttm_object_file *tfile = vmw_fpriv(file_priv)->tfile;
 struct vmw_user_fence *ufence;
 struct vmw_fence_obj *tmp;
 struct ttm_mem_global *mem_glob = vmw_mem_glob(fman->dev_priv);
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };
 int ret;






 ret = ttm_mem_global_alloc(mem_glob, fman->user_fence_size,
       &ctx);
 if (unlikely(ret != 0))
  return ret;

 ufence = kzalloc(sizeof(*ufence), GFP_KERNEL);
 if (unlikely(!ufence)) {
  ret = -ENOMEM;
  goto out_no_object;
 }

 ret = vmw_fence_obj_init(fman, &ufence->fence, seqno,
     vmw_user_fence_destroy);
 if (unlikely(ret != 0)) {
  kfree(ufence);
  goto out_no_object;
 }





 tmp = vmw_fence_obj_reference(&ufence->fence);
 ret = ttm_base_object_init(tfile, &ufence->base, 0,
       VMW_RES_FENCE,
       &vmw_user_fence_base_release, ((void*)0));


 if (unlikely(ret != 0)) {



  vmw_fence_obj_unreference(&tmp);
  goto out_err;
 }

 *p_fence = &ufence->fence;
 *p_handle = ufence->base.handle;

 return 0;
out_err:
 tmp = &ufence->fence;
 vmw_fence_obj_unreference(&tmp);
out_no_object:
 ttm_mem_global_free(mem_glob, fman->user_fence_size);
 return ret;
}

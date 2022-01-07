
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_bo_device {int dummy; } ;
struct vmw_private {struct ttm_bo_device bdev; } ;
struct TYPE_2__ {int priority; } ;
struct vmw_buffer_object {TYPE_1__ base; int res_list; } ;
struct ttm_placement {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 int TTM_MAX_BO_PRIORITY ;
 int WARN_ON_ONCE (int) ;
 int memset (struct vmw_buffer_object*,int ,int) ;
 int ttm_bo_init (struct ttm_bo_device*,TYPE_1__*,size_t,int ,struct ttm_placement*,int ,int,size_t,int *,int *,void (*) (struct ttm_buffer_object*)) ;
 int ttm_bo_type_device ;
 size_t vmw_bo_acc_size (struct vmw_private*,size_t,int) ;
 void vmw_bo_bo_free (struct ttm_buffer_object*) ;
 void vmw_user_bo_destroy (struct ttm_buffer_object*) ;

int vmw_bo_init(struct vmw_private *dev_priv,
  struct vmw_buffer_object *vmw_bo,
  size_t size, struct ttm_placement *placement,
  bool interruptible,
  void (*bo_free)(struct ttm_buffer_object *bo))
{
 struct ttm_bo_device *bdev = &dev_priv->bdev;
 size_t acc_size;
 int ret;
 bool user = (bo_free == &vmw_user_bo_destroy);

 WARN_ON_ONCE(!bo_free && (!user && (bo_free != vmw_bo_bo_free)));

 acc_size = vmw_bo_acc_size(dev_priv, size, user);
 memset(vmw_bo, 0, sizeof(*vmw_bo));
 BUILD_BUG_ON(TTM_MAX_BO_PRIORITY <= 3);
 vmw_bo->base.priority = 3;

 INIT_LIST_HEAD(&vmw_bo->res_list);

 ret = ttm_bo_init(bdev, &vmw_bo->base, size,
     ttm_bo_type_device, placement,
     0, interruptible, acc_size,
     ((void*)0), ((void*)0), bo_free);
 return ret;
}

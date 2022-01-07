
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_resource {struct vmw_buffer_object* backup; TYPE_2__* func; int backup_size; int dev_priv; } ;
struct TYPE_3__ {unsigned long num_pages; } ;
struct vmw_buffer_object {TYPE_1__ base; } ;
struct TYPE_4__ {int backup_placement; } ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 struct vmw_buffer_object* kzalloc (int,int ) ;
 scalar_t__ likely (struct vmw_buffer_object*) ;
 scalar_t__ unlikely (int) ;
 int vmw_bo_bo_free ;
 int vmw_bo_init (int ,struct vmw_buffer_object*,int ,int ,int,int *) ;

__attribute__((used)) static int vmw_resource_buf_alloc(struct vmw_resource *res,
      bool interruptible)
{
 unsigned long size =
  (res->backup_size + PAGE_SIZE - 1) & PAGE_MASK;
 struct vmw_buffer_object *backup;
 int ret;

 if (likely(res->backup)) {
  BUG_ON(res->backup->base.num_pages * PAGE_SIZE < size);
  return 0;
 }

 backup = kzalloc(sizeof(*backup), GFP_KERNEL);
 if (unlikely(!backup))
  return -ENOMEM;

 ret = vmw_bo_init(res->dev_priv, backup, res->backup_size,
         res->func->backup_placement,
         interruptible,
         &vmw_bo_bo_free);
 if (unlikely(ret != 0))
  goto out_no_bo;

 res->backup = backup;

out_no_bo:
 return ret;
}

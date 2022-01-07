
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_resource {scalar_t__ backup_size; int * backup; TYPE_1__* func; int lru_head; struct vmw_private* dev_priv; } ;
struct vmw_private {int resource_lock; } ;
struct TYPE_2__ {scalar_t__ needs_backup; } ;


 int DRM_ERROR (char*,unsigned long) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int vmw_resource_buf_alloc (struct vmw_resource*,int) ;

int vmw_resource_reserve(struct vmw_resource *res, bool interruptible,
    bool no_backup)
{
 struct vmw_private *dev_priv = res->dev_priv;
 int ret;

 spin_lock(&dev_priv->resource_lock);
 list_del_init(&res->lru_head);
 spin_unlock(&dev_priv->resource_lock);

 if (res->func->needs_backup && res->backup == ((void*)0) &&
     !no_backup) {
  ret = vmw_resource_buf_alloc(res, interruptible);
  if (unlikely(ret != 0)) {
   DRM_ERROR("Failed to allocate a backup buffer "
      "of size %lu. bytes\n",
      (unsigned long) res->backup_size);
   return ret;
  }
 }

 return 0;
}

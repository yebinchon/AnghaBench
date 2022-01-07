
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int userptr_wq; } ;
struct drm_i915_private {TYPE_1__ mm; int mm_structs; int mm_lock; } ;


 int ENOMEM ;
 int WQ_HIGHPRI ;
 int WQ_UNBOUND ;
 int alloc_workqueue (char*,int,int ) ;
 int hash_init (int ) ;
 int mutex_init (int *) ;

int i915_gem_init_userptr(struct drm_i915_private *dev_priv)
{
 mutex_init(&dev_priv->mm_lock);
 hash_init(dev_priv->mm_structs);

 dev_priv->mm.userptr_wq =
  alloc_workqueue("i915-userptr-acquire",
    WQ_HIGHPRI | WQ_UNBOUND,
    0);
 if (!dev_priv->mm.userptr_wq)
  return -ENOMEM;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_fence_manager {int lock; } ;


 int __vmw_fences_update (struct vmw_fence_manager*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void vmw_fences_update(struct vmw_fence_manager *fman)
{
 spin_lock(&fman->lock);
 __vmw_fences_update(fman);
 spin_unlock(&fman->lock);
}

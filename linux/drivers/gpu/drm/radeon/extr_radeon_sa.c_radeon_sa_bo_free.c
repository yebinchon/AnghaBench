
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct radeon_sa_manager {TYPE_1__ wq; int * flist; } ;
struct radeon_sa_bo {int flist; int fence; struct radeon_sa_manager* manager; } ;
struct radeon_fence {size_t ring; } ;
struct radeon_device {int dummy; } ;


 int list_add_tail (int *,int *) ;
 int radeon_fence_ref (struct radeon_fence*) ;
 int radeon_fence_signaled (struct radeon_fence*) ;
 int radeon_sa_bo_remove_locked (struct radeon_sa_bo*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up_all_locked (TYPE_1__*) ;

void radeon_sa_bo_free(struct radeon_device *rdev, struct radeon_sa_bo **sa_bo,
         struct radeon_fence *fence)
{
 struct radeon_sa_manager *sa_manager;

 if (sa_bo == ((void*)0) || *sa_bo == ((void*)0)) {
  return;
 }

 sa_manager = (*sa_bo)->manager;
 spin_lock(&sa_manager->wq.lock);
 if (fence && !radeon_fence_signaled(fence)) {
  (*sa_bo)->fence = radeon_fence_ref(fence);
  list_add_tail(&(*sa_bo)->flist,
         &sa_manager->flist[fence->ring]);
 } else {
  radeon_sa_bo_remove_locked(*sa_bo);
 }
 wake_up_all_locked(&sa_manager->wq);
 spin_unlock(&sa_manager->wq.lock);
 *sa_bo = ((void*)0);
}

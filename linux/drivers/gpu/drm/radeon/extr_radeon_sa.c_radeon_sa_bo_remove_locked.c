
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_sa_manager {TYPE_1__* hole; } ;
struct TYPE_2__ {struct TYPE_2__* prev; } ;
struct radeon_sa_bo {int fence; TYPE_1__ flist; TYPE_1__ olist; struct radeon_sa_manager* manager; } ;


 int kfree (struct radeon_sa_bo*) ;
 int list_del_init (TYPE_1__*) ;
 int radeon_fence_unref (int *) ;

__attribute__((used)) static void radeon_sa_bo_remove_locked(struct radeon_sa_bo *sa_bo)
{
 struct radeon_sa_manager *sa_manager = sa_bo->manager;
 if (sa_manager->hole == &sa_bo->olist) {
  sa_manager->hole = sa_bo->olist.prev;
 }
 list_del_init(&sa_bo->olist);
 list_del_init(&sa_bo->flist);
 radeon_fence_unref(&sa_bo->fence);
 kfree(sa_bo);
}

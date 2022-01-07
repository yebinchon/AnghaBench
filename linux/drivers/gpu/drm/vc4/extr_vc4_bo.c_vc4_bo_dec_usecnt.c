
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {scalar_t__ madv; int madv_lock; int usecnt; } ;


 scalar_t__ VC4_MADV_DONTNEED ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_dec_and_test (int *) ;
 scalar_t__ refcount_dec_not_one (int *) ;
 int vc4_bo_add_to_purgeable_pool (struct vc4_bo*) ;

void vc4_bo_dec_usecnt(struct vc4_bo *bo)
{



 if (refcount_dec_not_one(&bo->usecnt))
  return;

 mutex_lock(&bo->madv_lock);
 if (refcount_dec_and_test(&bo->usecnt) &&
     bo->madv == VC4_MADV_DONTNEED)
  vc4_bo_add_to_purgeable_pool(bo);
 mutex_unlock(&bo->madv_lock);
}

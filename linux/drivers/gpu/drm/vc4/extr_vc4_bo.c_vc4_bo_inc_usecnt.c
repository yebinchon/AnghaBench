
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_bo {int madv; int madv_lock; int usecnt; } ;


 int EINVAL ;



 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ refcount_inc_not_zero (int *) ;
 int refcount_set (int *,int) ;

int vc4_bo_inc_usecnt(struct vc4_bo *bo)
{
 int ret;




 if (refcount_inc_not_zero(&bo->usecnt))
  return 0;

 mutex_lock(&bo->madv_lock);
 switch (bo->madv) {
 case 129:
  if (!refcount_inc_not_zero(&bo->usecnt))
   refcount_set(&bo->usecnt, 1);
  ret = 0;
  break;
 case 130:






 case 128:

 default:

  ret = -EINVAL;
  break;
 }
 mutex_unlock(&bo->madv_lock);

 return ret;
}

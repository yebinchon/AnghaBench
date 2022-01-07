
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int bin_bo_lock; int bin_bo_kref; scalar_t__ bin_bo; } ;


 int bin_bo_alloc (struct vc4_dev*) ;
 int kref_get (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int vc4_v3d_bin_bo_get(struct vc4_dev *vc4, bool *used)
{
 int ret = 0;

 mutex_lock(&vc4->bin_bo_lock);

 if (used && *used)
  goto complete;

 if (vc4->bin_bo)
  kref_get(&vc4->bin_bo_kref);
 else
  ret = bin_bo_alloc(vc4);

 if (ret == 0 && used)
  *used = 1;

complete:
 mutex_unlock(&vc4->bin_bo_lock);

 return ret;
}

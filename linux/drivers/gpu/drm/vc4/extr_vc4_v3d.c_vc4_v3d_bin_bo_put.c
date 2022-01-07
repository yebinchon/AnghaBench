
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_dev {int bin_bo_lock; int bin_bo_kref; } ;


 int bin_bo_release ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void vc4_v3d_bin_bo_put(struct vc4_dev *vc4)
{
 mutex_lock(&vc4->bin_bo_lock);
 kref_put(&vc4->bin_bo_kref, bin_bo_release);
 mutex_unlock(&vc4->bin_bo_lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v3d_dev {int dummy; } ;


 int v3d_flush_l2t (struct v3d_dev*,int ) ;
 int v3d_flush_l3 (struct v3d_dev*) ;
 int v3d_invalidate_l2c (struct v3d_dev*,int ) ;
 int v3d_invalidate_slices (struct v3d_dev*,int ) ;

void
v3d_invalidate_caches(struct v3d_dev *v3d)
{





 v3d_flush_l3(v3d);
 v3d_invalidate_l2c(v3d, 0);
 v3d_flush_l2t(v3d, 0);
 v3d_invalidate_slices(v3d, 0);
}

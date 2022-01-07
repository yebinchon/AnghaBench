
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t4_sq {int dummy; } ;
struct c4iw_rdev {int dummy; } ;


 int ENOSYS ;
 int alloc_host_sq (struct c4iw_rdev*,struct t4_sq*) ;
 int alloc_oc_sq (struct c4iw_rdev*,struct t4_sq*) ;

__attribute__((used)) static int alloc_sq(struct c4iw_rdev *rdev, struct t4_sq *sq, int user)
{
 int ret = -ENOSYS;
 if (user)
  ret = alloc_oc_sq(rdev, sq);
 if (ret)
  ret = alloc_host_sq(rdev, sq);
 return ret;
}

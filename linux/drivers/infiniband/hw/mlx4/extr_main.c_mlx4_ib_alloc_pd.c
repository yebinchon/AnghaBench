
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_pd {int pdn; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {int dev; } ;


 int EFAULT ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,int *,int) ;
 int mlx4_pd_alloc (int ,int *) ;
 int mlx4_pd_free (int ,int ) ;
 TYPE_1__* to_mdev (struct ib_device*) ;
 struct mlx4_ib_pd* to_mpd (struct ib_pd*) ;

__attribute__((used)) static int mlx4_ib_alloc_pd(struct ib_pd *ibpd, struct ib_udata *udata)
{
 struct mlx4_ib_pd *pd = to_mpd(ibpd);
 struct ib_device *ibdev = ibpd->device;
 int err;

 err = mlx4_pd_alloc(to_mdev(ibdev)->dev, &pd->pdn);
 if (err)
  return err;

 if (udata && ib_copy_to_udata(udata, &pd->pdn, sizeof(__u32))) {
  mlx4_pd_free(to_mdev(ibdev)->dev, pd->pdn);
  return -EFAULT;
 }
 return 0;
}

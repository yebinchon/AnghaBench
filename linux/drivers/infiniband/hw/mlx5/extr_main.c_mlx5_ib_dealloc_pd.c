
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_pd {int uid; int pdn; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 int mlx5_cmd_dealloc_pd (int ,int ,int ) ;
 struct mlx5_ib_dev* to_mdev (int ) ;
 struct mlx5_ib_pd* to_mpd (struct ib_pd*) ;

__attribute__((used)) static void mlx5_ib_dealloc_pd(struct ib_pd *pd, struct ib_udata *udata)
{
 struct mlx5_ib_dev *mdev = to_mdev(pd->device);
 struct mlx5_ib_pd *mpd = to_mpd(pd);

 mlx5_cmd_dealloc_pd(mdev->mdev, mpd->pdn, mpd->uid);
}

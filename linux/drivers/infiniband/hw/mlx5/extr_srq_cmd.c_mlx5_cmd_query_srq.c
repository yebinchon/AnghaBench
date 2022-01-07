
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_srq_attr {int dummy; } ;
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct TYPE_4__ {int res; } ;
struct mlx5_core_srq {TYPE_2__ common; } ;
struct TYPE_3__ {int issi; } ;




 int query_rmp_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ;
 int query_srq_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ;
 int query_xrc_srq_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ;
 int query_xrq_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,struct mlx5_srq_attr*) ;

int mlx5_cmd_query_srq(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
         struct mlx5_srq_attr *out)
{
 if (!dev->mdev->issi)
  return query_srq_cmd(dev, srq, out);
 switch (srq->common.res) {
 case 128:
  return query_xrc_srq_cmd(dev, srq, out);
 case 129:
  return query_xrq_cmd(dev, srq, out);
 default:
  return query_rmp_cmd(dev, srq, out);
 }
}

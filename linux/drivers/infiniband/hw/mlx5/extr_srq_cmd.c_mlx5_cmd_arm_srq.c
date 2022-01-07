
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct mlx5_ib_dev {TYPE_1__* mdev; } ;
struct TYPE_4__ {int res; } ;
struct mlx5_core_srq {TYPE_2__ common; } ;
struct TYPE_3__ {int issi; } ;




 int arm_rmp_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,int ) ;
 int arm_srq_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,int ,int) ;
 int arm_xrc_srq_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,int ) ;
 int arm_xrq_cmd (struct mlx5_ib_dev*,struct mlx5_core_srq*,int ) ;

int mlx5_cmd_arm_srq(struct mlx5_ib_dev *dev, struct mlx5_core_srq *srq,
       u16 lwm, int is_srq)
{
 if (!dev->mdev->issi)
  return arm_srq_cmd(dev, srq, lwm, is_srq);
 switch (srq->common.res) {
 case 128:
  return arm_xrc_srq_cmd(dev, srq, lwm);
 case 129:
  return arm_xrq_cmd(dev, srq, lwm);
 default:
  return arm_rmp_cmd(dev, srq, lwm);
 }
}

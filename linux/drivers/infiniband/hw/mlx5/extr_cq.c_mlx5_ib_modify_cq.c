
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlx5_ib_dev {int mdev; } ;
struct TYPE_2__ {int cqn; } ;
struct mlx5_ib_cq {TYPE_1__ mcq; } ;
struct ib_cq {int device; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_MAX_CQ_PERIOD ;
 int cq_moderation ;
 int mlx5_core_modify_cq_moderation (int ,TYPE_1__*,int ,int ) ;
 int mlx5_ib_warn (struct mlx5_ib_dev*,char*,int ) ;
 struct mlx5_ib_cq* to_mcq (struct ib_cq*) ;
 struct mlx5_ib_dev* to_mdev (int ) ;

int mlx5_ib_modify_cq(struct ib_cq *cq, u16 cq_count, u16 cq_period)
{
 struct mlx5_ib_dev *dev = to_mdev(cq->device);
 struct mlx5_ib_cq *mcq = to_mcq(cq);
 int err;

 if (!MLX5_CAP_GEN(dev->mdev, cq_moderation))
  return -EOPNOTSUPP;

 if (cq_period > MLX5_MAX_CQ_PERIOD)
  return -EINVAL;

 err = mlx5_core_modify_cq_moderation(dev->mdev, &mcq->mcq,
          cq_period, cq_count);
 if (err)
  mlx5_ib_warn(dev, "modify cq 0x%x failed\n", mcq->mcq.cqn);

 return err;
}

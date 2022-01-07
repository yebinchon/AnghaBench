
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int pd; } ;
struct TYPE_4__ {int tirn; } ;
struct mlx5_ib_qp {int flags_en; TYPE_2__ ibqp; TYPE_1__ rss_qp; } ;
struct mlx5_ib_dev {int mdev; } ;
struct TYPE_6__ {int uid; } ;


 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC ;
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC ;
 int mlx5_cmd_destroy_tir (int ,int ,int ) ;
 int mlx5_ib_disable_lb (struct mlx5_ib_dev*,int,int) ;
 TYPE_3__* to_mpd (int ) ;

__attribute__((used)) static void destroy_rss_raw_qp_tir(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
 if (qp->flags_en & (MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC |
       MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC))
  mlx5_ib_disable_lb(dev, 0, 1);
 mlx5_cmd_destroy_tir(dev->mdev, qp->rss_qp.tirn,
        to_mpd(qp->ibqp.pd)->uid);
}

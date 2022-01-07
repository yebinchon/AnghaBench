
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_ib_rq {int tirn; } ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_pd {int dummy; } ;
struct TYPE_2__ {int uid; } ;


 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC ;
 int MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC ;
 int mlx5_cmd_destroy_tir (int ,int ,int ) ;
 int mlx5_ib_disable_lb (struct mlx5_ib_dev*,int,int) ;
 TYPE_1__* to_mpd (struct ib_pd*) ;

__attribute__((used)) static void destroy_raw_packet_qp_tir(struct mlx5_ib_dev *dev,
          struct mlx5_ib_rq *rq,
          u32 qp_flags_en,
          struct ib_pd *pd)
{
 if (qp_flags_en & (MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_UC |
      MLX5_QP_FLAG_TIR_ALLOW_SELF_LB_MC))
  mlx5_ib_disable_lb(dev, 0, 1);
 mlx5_cmd_destroy_tir(dev->mdev, rq->tirn, to_mpd(pd)->uid);
}

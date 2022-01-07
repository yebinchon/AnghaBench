
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;
struct mlx5_core_rsc_common {int dummy; } ;
struct mlx5_core_srq {struct mlx5_core_rsc_common common; } ;


 int MLX5_RES_QP ;




 struct mlx5_core_srq* mlx5_cmd_get_srq (struct mlx5_ib_dev*,int ) ;
 struct mlx5_core_rsc_common* mlx5_core_res_hold (int ,int ,int ) ;

__attribute__((used)) static inline struct mlx5_core_rsc_common *odp_get_rsc(struct mlx5_ib_dev *dev,
             u32 wq_num, int pf_type)
{
 struct mlx5_core_rsc_common *common = ((void*)0);
 struct mlx5_core_srq *srq;

 switch (pf_type) {
 case 128:
  srq = mlx5_cmd_get_srq(dev, wq_num);
  if (srq)
   common = &srq->common;
  break;
 case 130:
 case 129:
 case 131:
  common = mlx5_core_res_hold(dev->mdev, wq_num, MLX5_RES_QP);
  break;
 default:
  break;
 }

 return common;
}

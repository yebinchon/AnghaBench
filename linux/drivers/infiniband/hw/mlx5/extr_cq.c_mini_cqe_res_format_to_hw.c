
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int MLX5_CAP_GEN (int ,int ) ;
 int MLX5_CQE_RES_FORMAT_CSUM ;
 int MLX5_CQE_RES_FORMAT_CSUM_STRIDX ;
 int MLX5_CQE_RES_FORMAT_HASH ;



 int mini_cqe_resp_stride_index ;

__attribute__((used)) static int mini_cqe_res_format_to_hw(struct mlx5_ib_dev *dev, u8 format)
{
 switch (format) {
 case 128:
  return MLX5_CQE_RES_FORMAT_HASH;
 case 130:
  return MLX5_CQE_RES_FORMAT_CSUM;
 case 129:
  if (MLX5_CAP_GEN(dev->mdev, mini_cqe_resp_stride_index))
   return MLX5_CQE_RES_FORMAT_CSUM_STRIDX;
  return -EOPNOTSUPP;
 default:
  return -EINVAL;
 }
}

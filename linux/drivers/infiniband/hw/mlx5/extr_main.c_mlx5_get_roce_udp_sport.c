
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int mdev; } ;
struct ib_gid_attr {scalar_t__ gid_type; } ;
typedef int __be16 ;


 scalar_t__ IB_GID_TYPE_ROCE_UDP_ENCAP ;
 int MLX5_CAP_ROCE (int ,int ) ;
 int cpu_to_be16 (int ) ;
 int r_roce_min_src_udp_port ;

__be16 mlx5_get_roce_udp_sport(struct mlx5_ib_dev *dev,
          const struct ib_gid_attr *attr)
{
 if (attr->gid_type != IB_GID_TYPE_ROCE_UDP_ENCAP)
  return 0;

 return cpu_to_be16(MLX5_CAP_ROCE(dev->mdev, r_roce_min_src_udp_port));
}

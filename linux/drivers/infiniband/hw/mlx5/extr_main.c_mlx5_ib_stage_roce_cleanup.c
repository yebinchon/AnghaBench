
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;


 int IB_LINK_LAYER_ETHERNET ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int mlx5_disable_eth (struct mlx5_ib_dev*) ;
 int mlx5_ib_stage_common_roce_cleanup (struct mlx5_ib_dev*) ;
 int mlx5_port_type_cap_to_rdma_ll (int) ;
 int port_type ;

__attribute__((used)) static void mlx5_ib_stage_roce_cleanup(struct mlx5_ib_dev *dev)
{
 struct mlx5_core_dev *mdev = dev->mdev;
 enum rdma_link_layer ll;
 int port_type_cap;

 port_type_cap = MLX5_CAP_GEN(mdev, port_type);
 ll = mlx5_port_type_cap_to_rdma_ll(port_type_cap);

 if (ll == IB_LINK_LAYER_ETHERNET) {
  mlx5_disable_eth(dev);
  mlx5_ib_stage_common_roce_cleanup(dev);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;
 int MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;



 int mlx5_get_vport_access_method (struct ib_device*) ;
 int mlx5_query_mad_ifc_max_pkeys (struct ib_device*,int *) ;
 int mlx5_to_sw_pkey_sz (int ) ;
 int pkey_table_size ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_query_max_pkeys(struct ib_device *ibdev,
    u16 *max_pkeys)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev = dev->mdev;

 switch (mlx5_get_vport_access_method(ibdev)) {
 case 129:
  return mlx5_query_mad_ifc_max_pkeys(ibdev, max_pkeys);

 case 130:
 case 128:
  *max_pkeys = mlx5_to_sw_pkey_sz(MLX5_CAP_GEN(mdev,
      pkey_table_size));
  return 0;

 default:
  return -EINVAL;
 }
}

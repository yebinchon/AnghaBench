
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mlx5_ib_dev {int mdev; int ib_dev; } ;
typedef int __be64 ;


 int EINVAL ;



 int cpu_to_be64 (int ) ;
 int mlx5_get_vport_access_method (int *) ;
 int mlx5_query_hca_vport_node_guid (int ,int *) ;
 int mlx5_query_mad_ifc_node_guid (struct mlx5_ib_dev*,int *) ;
 int mlx5_query_nic_vport_node_guid (int ,int *) ;

__attribute__((used)) static int mlx5_query_node_guid(struct mlx5_ib_dev *dev,
    __be64 *node_guid)
{
 u64 tmp;
 int err;

 switch (mlx5_get_vport_access_method(&dev->ib_dev)) {
 case 129:
  return mlx5_query_mad_ifc_node_guid(dev, node_guid);

 case 130:
  err = mlx5_query_hca_vport_node_guid(dev->mdev, &tmp);
  break;

 case 128:
  err = mlx5_query_nic_vport_node_guid(dev->mdev, &tmp);
  break;

 default:
  return -EINVAL;
 }

 if (!err)
  *node_guid = cpu_to_be64(tmp);

 return err;
}

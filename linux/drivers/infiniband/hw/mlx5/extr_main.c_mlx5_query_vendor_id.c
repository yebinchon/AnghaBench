
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;
struct ib_device {int dummy; } ;


 int EINVAL ;



 int mlx5_core_query_vendor_id (int ,int *) ;
 int mlx5_get_vport_access_method (struct ib_device*) ;
 int mlx5_query_mad_ifc_vendor_id (struct ib_device*,int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_query_vendor_id(struct ib_device *ibdev,
    u32 *vendor_id)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);

 switch (mlx5_get_vport_access_method(ibdev)) {
 case 129:
  return mlx5_query_mad_ifc_vendor_id(ibdev, vendor_id);

 case 130:
 case 128:
  return mlx5_core_query_vendor_id(dev->mdev, vendor_id);

 default:
  return -EINVAL;
 }
}

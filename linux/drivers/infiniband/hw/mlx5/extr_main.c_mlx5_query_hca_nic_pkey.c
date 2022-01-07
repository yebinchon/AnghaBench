
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;


 struct mlx5_core_dev* mlx5_ib_get_native_port_mdev (struct mlx5_ib_dev*,int,int*) ;
 int mlx5_ib_put_native_port_mdev (struct mlx5_ib_dev*,int) ;
 int mlx5_query_hca_vport_pkey (struct mlx5_core_dev*,int ,int,int ,int ,int *) ;
 struct mlx5_ib_dev* to_mdev (struct ib_device*) ;

__attribute__((used)) static int mlx5_query_hca_nic_pkey(struct ib_device *ibdev, u8 port,
       u16 index, u16 *pkey)
{
 struct mlx5_ib_dev *dev = to_mdev(ibdev);
 struct mlx5_core_dev *mdev;
 bool put_mdev = 1;
 u8 mdev_port_num;
 int err;

 mdev = mlx5_ib_get_native_port_mdev(dev, port, &mdev_port_num);
 if (!mdev) {



  put_mdev = 0;
  mdev = dev->mdev;
  mdev_port_num = 1;
 }

 err = mlx5_query_hca_vport_pkey(mdev, 0, mdev_port_num, 0,
     index, pkey);
 if (put_mdev)
  mlx5_ib_put_native_port_mdev(dev, port);

 return err;
}

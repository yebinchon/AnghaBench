
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlx5_ib_dev {int mdev; } ;


 int CAP_NET_RAW ;
 int CAP_SYS_RAWIO ;
 int EOPNOTSUPP ;
 int EPERM ;
 int MLX5_CAP_DEV_MEM (int ,int ) ;
 int MLX5_CAP_FLOWTABLE_NIC_RX (int ,int ) ;
 int MLX5_CAP_FLOWTABLE_NIC_TX (int ,int ) ;



 int capable (int ) ;
 int memic ;
 int sw_owner ;

__attribute__((used)) static inline int check_dm_type_support(struct mlx5_ib_dev *dev,
     u32 type)
{
 switch (type) {
 case 129:
  if (!MLX5_CAP_DEV_MEM(dev->mdev, memic))
   return -EOPNOTSUPP;
  break;
 case 128:
 case 130:
  if (!capable(CAP_SYS_RAWIO) ||
      !capable(CAP_NET_RAW))
   return -EPERM;

  if (!(MLX5_CAP_FLOWTABLE_NIC_RX(dev->mdev, sw_owner) ||
        MLX5_CAP_FLOWTABLE_NIC_TX(dev->mdev, sw_owner)))
   return -EOPNOTSUPP;
  break;
 }

 return 0;
}

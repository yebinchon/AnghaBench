
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int devx_whitelist_uid; } ;


 int mlx5_ib_devx_create (struct mlx5_ib_dev*,int) ;
 int mlx5_ib_devx_init_event_table (struct mlx5_ib_dev*) ;

__attribute__((used)) static int mlx5_ib_stage_devx_init(struct mlx5_ib_dev *dev)
{
 int uid;

 uid = mlx5_ib_devx_create(dev, 0);
 if (uid > 0) {
  dev->devx_whitelist_uid = uid;
  mlx5_ib_devx_init_event_table(dev);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {scalar_t__ devx_whitelist_uid; } ;


 int mlx5_ib_devx_cleanup_event_table (struct mlx5_ib_dev*) ;
 int mlx5_ib_devx_destroy (struct mlx5_ib_dev*,scalar_t__) ;

__attribute__((used)) static void mlx5_ib_stage_devx_cleanup(struct mlx5_ib_dev *dev)
{
 if (dev->devx_whitelist_uid) {
  mlx5_ib_devx_cleanup_event_table(dev);
  mlx5_ib_devx_destroy(dev, dev->devx_whitelist_uid);
 }
}

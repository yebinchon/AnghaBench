
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int ib_dev; } ;


 int ib_unregister_device (int *) ;

__attribute__((used)) static void mlx5_ib_stage_ib_reg_cleanup(struct mlx5_ib_dev *dev)
{
 ib_unregister_device(&dev->ib_dev);
}

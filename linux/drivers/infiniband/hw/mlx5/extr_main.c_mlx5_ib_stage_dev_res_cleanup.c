
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int devr; } ;


 int destroy_dev_resources (int *) ;

__attribute__((used)) static void mlx5_ib_stage_dev_res_cleanup(struct mlx5_ib_dev *dev)
{
 destroy_dev_resources(&dev->devr);
}

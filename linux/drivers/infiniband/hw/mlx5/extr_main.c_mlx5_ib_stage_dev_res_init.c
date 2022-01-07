
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int devr; } ;


 int create_dev_resources (int *) ;

__attribute__((used)) static int mlx5_ib_stage_dev_res_init(struct mlx5_ib_dev *dev)
{
 return create_dev_resources(&dev->devr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int ib_dev; } ;


 int ib_set_device_ops (int *,int *) ;
 int mlx5_ib_dev_port_rep_ops ;

__attribute__((used)) static int mlx5_ib_stage_rep_non_default_cb(struct mlx5_ib_dev *dev)
{
 ib_set_device_ops(&dev->ib_dev, &mlx5_ib_dev_port_rep_ops);
 return 0;
}

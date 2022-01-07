
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;


 int init_delay_drop (struct mlx5_ib_dev*) ;

__attribute__((used)) static int mlx5_ib_stage_delay_drop_init(struct mlx5_ib_dev *dev)
{
 init_delay_drop(dev);

 return 0;
}

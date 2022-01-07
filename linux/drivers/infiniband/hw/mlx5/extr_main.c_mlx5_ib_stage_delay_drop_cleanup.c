
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int dummy; } ;


 int cancel_delay_drop (struct mlx5_ib_dev*) ;

__attribute__((used)) static void mlx5_ib_stage_delay_drop_cleanup(struct mlx5_ib_dev *dev)
{
 cancel_delay_drop(dev);
}

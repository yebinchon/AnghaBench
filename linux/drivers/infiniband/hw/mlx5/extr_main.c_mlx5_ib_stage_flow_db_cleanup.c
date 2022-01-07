
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_dev {int flow_db; } ;


 int kfree (int ) ;

__attribute__((used)) static void mlx5_ib_stage_flow_db_cleanup(struct mlx5_ib_dev *dev)
{
 kfree(dev->flow_db);
}

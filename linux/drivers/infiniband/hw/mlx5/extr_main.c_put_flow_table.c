
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_flow_prio {int * flow_table; scalar_t__ refcount; } ;
struct mlx5_ib_dev {int dummy; } ;


 int mlx5_destroy_flow_table (int *) ;

__attribute__((used)) static void put_flow_table(struct mlx5_ib_dev *dev,
      struct mlx5_ib_flow_prio *prio, bool ft_added)
{
 prio->refcount -= !!ft_added;
 if (!prio->refcount) {
  mlx5_destroy_flow_table(prio->flow_table);
  prio->flow_table = ((void*)0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_sq {int * flow_rule; } ;


 int mlx5_del_flow_rules (int *) ;

__attribute__((used)) static void destroy_flow_rule_vport_sq(struct mlx5_ib_sq *sq)
{
 if (sq->flow_rule)
  mlx5_del_flow_rules(sq->flow_rule);
 sq->flow_rule = ((void*)0);
}

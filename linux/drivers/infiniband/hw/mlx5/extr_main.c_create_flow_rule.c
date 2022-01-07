
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_flow_prio {int dummy; } ;
struct mlx5_ib_flow_handler {int dummy; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {int dummy; } ;


 struct mlx5_ib_flow_handler* _create_flow_rule (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr const*,struct mlx5_flow_destination*,int ,int *) ;

__attribute__((used)) static struct mlx5_ib_flow_handler *create_flow_rule(struct mlx5_ib_dev *dev,
           struct mlx5_ib_flow_prio *ft_prio,
           const struct ib_flow_attr *flow_attr,
           struct mlx5_flow_destination *dst)
{
 return _create_flow_rule(dev, ft_prio, flow_attr, dst, 0, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_flow_prio {int refcount; } ;
struct mlx5_ib_flow_handler {int list; int rule; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {int dummy; } ;


 scalar_t__ IS_ERR (struct mlx5_ib_flow_handler*) ;
 struct mlx5_ib_flow_handler* create_flow_rule (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr*,struct mlx5_flow_destination*) ;
 int kfree (struct mlx5_ib_flow_handler*) ;
 int list_add (int *,int *) ;
 int mlx5_del_flow_rules (int ) ;

__attribute__((used)) static struct mlx5_ib_flow_handler *create_dont_trap_rule(struct mlx5_ib_dev *dev,
         struct mlx5_ib_flow_prio *ft_prio,
         struct ib_flow_attr *flow_attr,
         struct mlx5_flow_destination *dst)
{
 struct mlx5_ib_flow_handler *handler_dst = ((void*)0);
 struct mlx5_ib_flow_handler *handler = ((void*)0);

 handler = create_flow_rule(dev, ft_prio, flow_attr, ((void*)0));
 if (!IS_ERR(handler)) {
  handler_dst = create_flow_rule(dev, ft_prio,
            flow_attr, dst);
  if (IS_ERR(handler_dst)) {
   mlx5_del_flow_rules(handler->rule);
   ft_prio->refcount--;
   kfree(handler);
   handler = handler_dst;
  } else {
   list_add(&handler_dst->list, &handler->list);
  }
 }

 return handler;
}

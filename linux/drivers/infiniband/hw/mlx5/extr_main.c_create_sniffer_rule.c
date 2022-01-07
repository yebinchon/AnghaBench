
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_ib_flow_prio {int refcount; } ;
struct mlx5_ib_flow_handler {int rule; int list; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_destination {int dummy; } ;
struct ib_flow_attr {int size; int num_of_specs; } ;
typedef int flow_attr ;


 struct mlx5_ib_flow_handler* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct mlx5_ib_flow_handler*) ;
 int PTR_ERR (struct mlx5_ib_flow_handler*) ;
 struct mlx5_ib_flow_handler* create_flow_rule (struct mlx5_ib_dev*,struct mlx5_ib_flow_prio*,struct ib_flow_attr const*,struct mlx5_flow_destination*) ;
 int kfree (struct mlx5_ib_flow_handler*) ;
 int list_add (int *,int *) ;
 int mlx5_del_flow_rules (int ) ;

__attribute__((used)) static struct mlx5_ib_flow_handler *create_sniffer_rule(struct mlx5_ib_dev *dev,
       struct mlx5_ib_flow_prio *ft_rx,
       struct mlx5_ib_flow_prio *ft_tx,
       struct mlx5_flow_destination *dst)
{
 struct mlx5_ib_flow_handler *handler_rx;
 struct mlx5_ib_flow_handler *handler_tx;
 int err;
 static const struct ib_flow_attr flow_attr = {
  .num_of_specs = 0,
  .size = sizeof(flow_attr)
 };

 handler_rx = create_flow_rule(dev, ft_rx, &flow_attr, dst);
 if (IS_ERR(handler_rx)) {
  err = PTR_ERR(handler_rx);
  goto err;
 }

 handler_tx = create_flow_rule(dev, ft_tx, &flow_attr, dst);
 if (IS_ERR(handler_tx)) {
  err = PTR_ERR(handler_tx);
  goto err_tx;
 }

 list_add(&handler_tx->list, &handler_rx->list);

 return handler_rx;

err_tx:
 mlx5_del_flow_rules(handler_rx->rule);
 ft_rx->refcount--;
 kfree(handler_rx);
err:
 return ERR_PTR(err);
}

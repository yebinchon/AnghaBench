
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx5_ib_flow_prio {struct mlx5_flow_table* flow_table; int refcount; } ;
struct TYPE_2__ {void* match_params; } ;
struct mlx5_ib_flow_matcher {int mask_len; int match_criteria_enable; TYPE_1__ matcher_mask; } ;
struct mlx5_ib_flow_handler {struct mlx5_ib_dev* dev; struct mlx5_ib_flow_prio* prio; int rule; int list; } ;
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_flow_table {int dummy; } ;
struct mlx5_flow_context {int dummy; } ;
struct mlx5_flow_spec {struct mlx5_flow_context flow_context; int match_criteria_enable; int match_criteria; int match_value; } ;
struct mlx5_flow_destination {int dummy; } ;
struct mlx5_flow_act {int dummy; } ;


 int ENOMEM ;
 struct mlx5_ib_flow_handler* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kfree (struct mlx5_ib_flow_handler*) ;
 int kvfree (struct mlx5_flow_spec*) ;
 struct mlx5_flow_spec* kvzalloc (int,int ) ;
 struct mlx5_ib_flow_handler* kzalloc (int,int ) ;
 int memcpy (int ,void*,int) ;
 int mlx5_add_flow_rules (struct mlx5_flow_table*,struct mlx5_flow_spec*,struct mlx5_flow_act*,struct mlx5_flow_destination*,int) ;

__attribute__((used)) static struct mlx5_ib_flow_handler *
_create_raw_flow_rule(struct mlx5_ib_dev *dev,
        struct mlx5_ib_flow_prio *ft_prio,
        struct mlx5_flow_destination *dst,
        struct mlx5_ib_flow_matcher *fs_matcher,
        struct mlx5_flow_context *flow_context,
        struct mlx5_flow_act *flow_act,
        void *cmd_in, int inlen,
        int dst_num)
{
 struct mlx5_ib_flow_handler *handler;
 struct mlx5_flow_spec *spec;
 struct mlx5_flow_table *ft = ft_prio->flow_table;
 int err = 0;

 spec = kvzalloc(sizeof(*spec), GFP_KERNEL);
 handler = kzalloc(sizeof(*handler), GFP_KERNEL);
 if (!handler || !spec) {
  err = -ENOMEM;
  goto free;
 }

 INIT_LIST_HEAD(&handler->list);

 memcpy(spec->match_value, cmd_in, inlen);
 memcpy(spec->match_criteria, fs_matcher->matcher_mask.match_params,
        fs_matcher->mask_len);
 spec->match_criteria_enable = fs_matcher->match_criteria_enable;
 spec->flow_context = *flow_context;

 handler->rule = mlx5_add_flow_rules(ft, spec,
         flow_act, dst, dst_num);

 if (IS_ERR(handler->rule)) {
  err = PTR_ERR(handler->rule);
  goto free;
 }

 ft_prio->refcount++;
 handler->prio = ft_prio;
 handler->dev = dev;
 ft_prio->flow_table = ft;

free:
 if (err)
  kfree(handler);
 kvfree(spec);
 return err ? ERR_PTR(err) : handler;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ib_flow_action {int dummy; } ;
struct TYPE_2__ {struct mlx5_ib_dev* dev; int sub_type; int modify_hdr; } ;
struct mlx5_ib_flow_action {struct ib_flow_action ib_action; TYPE_1__ flow_action_raw; } ;
struct mlx5_ib_dev {int mdev; } ;
typedef enum mlx5_ib_uapi_flow_table_type { ____Placeholder_mlx5_ib_uapi_flow_table_type } mlx5_ib_uapi_flow_table_type ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_flow_action* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MLX5_IB_FLOW_ACTION_MODIFY_HEADER ;
 int PTR_ERR (int ) ;
 int kfree (struct mlx5_ib_flow_action*) ;
 struct mlx5_ib_flow_action* kzalloc (int,int ) ;
 int mlx5_ib_ft_type_to_namespace (int,int*) ;
 int mlx5_modify_header_alloc (int ,int,int ,void*) ;

__attribute__((used)) static struct ib_flow_action *
mlx5_ib_create_modify_header(struct mlx5_ib_dev *dev,
        enum mlx5_ib_uapi_flow_table_type ft_type,
        u8 num_actions, void *in)
{
 enum mlx5_flow_namespace_type namespace;
 struct mlx5_ib_flow_action *maction;
 int ret;

 ret = mlx5_ib_ft_type_to_namespace(ft_type, &namespace);
 if (ret)
  return ERR_PTR(-EINVAL);

 maction = kzalloc(sizeof(*maction), GFP_KERNEL);
 if (!maction)
  return ERR_PTR(-ENOMEM);

 maction->flow_action_raw.modify_hdr =
  mlx5_modify_header_alloc(dev->mdev, namespace, num_actions, in);

 if (IS_ERR(maction->flow_action_raw.modify_hdr)) {
  ret = PTR_ERR(maction->flow_action_raw.modify_hdr);
  kfree(maction);
  return ERR_PTR(ret);
 }
 maction->flow_action_raw.sub_type =
  MLX5_IB_FLOW_ACTION_MODIFY_HEADER;
 maction->flow_action_raw.dev = dev;

 return &maction->ib_action;
}

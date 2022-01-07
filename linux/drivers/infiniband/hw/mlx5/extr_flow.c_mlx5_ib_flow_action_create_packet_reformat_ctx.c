
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct mlx5_ib_dev* dev; int sub_type; int pkt_reformat; } ;
struct mlx5_ib_flow_action {TYPE_1__ flow_action_raw; } ;
struct mlx5_ib_dev {int mdev; } ;
typedef enum mlx5_flow_namespace_type { ____Placeholder_mlx5_flow_namespace_type } mlx5_flow_namespace_type ;


 scalar_t__ IS_ERR (int ) ;
 int MLX5_IB_FLOW_ACTION_PACKET_REFORMAT ;
 int PTR_ERR (int ) ;
 int mlx5_ib_dv_to_prm_packet_reforamt_type (int ,int *) ;
 int mlx5_ib_ft_type_to_namespace (int ,int*) ;
 int mlx5_packet_reformat_alloc (int ,int ,size_t,void*,int) ;

__attribute__((used)) static int mlx5_ib_flow_action_create_packet_reformat_ctx(
 struct mlx5_ib_dev *dev,
 struct mlx5_ib_flow_action *maction,
 u8 ft_type, u8 dv_prt,
 void *in, size_t len)
{
 enum mlx5_flow_namespace_type namespace;
 u8 prm_prt;
 int ret;

 ret = mlx5_ib_ft_type_to_namespace(ft_type, &namespace);
 if (ret)
  return ret;

 ret = mlx5_ib_dv_to_prm_packet_reforamt_type(dv_prt, &prm_prt);
 if (ret)
  return ret;

 maction->flow_action_raw.pkt_reformat =
  mlx5_packet_reformat_alloc(dev->mdev, prm_prt, len,
        in, namespace);
 if (IS_ERR(maction->flow_action_raw.pkt_reformat)) {
  ret = PTR_ERR(maction->flow_action_raw.pkt_reformat);
  return ret;
 }

 maction->flow_action_raw.sub_type =
  MLX5_IB_FLOW_ACTION_PACKET_REFORMAT;
 maction->flow_action_raw.dev = dev;

 return 0;
}

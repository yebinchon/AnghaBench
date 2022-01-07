
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mlx5_ib_dev {int mdev; } ;


 int MLX5_CAP_FLOWTABLE (int ,int ) ;
 int MLX5_CAP_FLOWTABLE_NIC_RX (int ,int ) ;
 int MLX5_CAP_FLOWTABLE_NIC_TX (int ,int ) ;




 int MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX ;
 int MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX ;
 int decap ;
 int encap_general_header ;
 int reformat_l2_to_l3_tunnel ;
 int reformat_l3_tunnel_to_l2 ;

__attribute__((used)) static bool mlx5_ib_flow_action_packet_reformat_valid(struct mlx5_ib_dev *ibdev,
            u8 packet_reformat_type,
            u8 ft_type)
{
 switch (packet_reformat_type) {
 case 131:
  if (ft_type == MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX)
   return MLX5_CAP_FLOWTABLE(ibdev->mdev,
        encap_general_header);
  break;
 case 130:
  if (ft_type == MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_TX)
   return MLX5_CAP_FLOWTABLE_NIC_TX(ibdev->mdev,
    reformat_l2_to_l3_tunnel);
  break;
 case 128:
  if (ft_type == MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX)
   return MLX5_CAP_FLOWTABLE_NIC_RX(ibdev->mdev,
    reformat_l3_tunnel_to_l2);
  break;
 case 129:
  if (ft_type == MLX5_IB_UAPI_FLOW_TABLE_TYPE_NIC_RX)
   return MLX5_CAP_FLOWTABLE_NIC_RX(ibdev->mdev, decap);
  break;
 default:
  break;
 }

 return 0;
}

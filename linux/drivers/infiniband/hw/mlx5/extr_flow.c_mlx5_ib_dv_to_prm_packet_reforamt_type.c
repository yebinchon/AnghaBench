
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EINVAL ;



 int MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL ;
 int MLX5_REFORMAT_TYPE_L2_TO_L3_TUNNEL ;
 int MLX5_REFORMAT_TYPE_L3_TUNNEL_TO_L2 ;

__attribute__((used)) static int mlx5_ib_dv_to_prm_packet_reforamt_type(u8 dv_prt, u8 *prm_prt)
{
 switch (dv_prt) {
 case 130:
  *prm_prt = MLX5_REFORMAT_TYPE_L2_TO_L2_TUNNEL;
  break;
 case 128:
  *prm_prt = MLX5_REFORMAT_TYPE_L3_TUNNEL_TO_L2;
  break;
 case 129:
  *prm_prt = MLX5_REFORMAT_TYPE_L2_TO_L3_TUNNEL;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MLX5_GET (int ,void*,int ) ;
 int clamp_tgt_rate ;
 int clamp_tgt_rate_after_time_inc ;
 int cnp_802p_prio ;
 int cnp_dscp ;
 int cnp_prio_mode ;
 int cong_control_r_roce_ecn_np ;
 int cong_control_r_roce_ecn_rp ;
 int dce_tcp_g ;
 int dce_tcp_rtt ;
 int initial_alpha_value ;
 int rate_reduce_monitor_period ;
 int rate_to_set_on_first_cnp ;
 int rpg_ai_rate ;
 int rpg_byte_reset ;
 int rpg_gd ;
 int rpg_hai_rate ;
 int rpg_min_dec_fac ;
 int rpg_min_rate ;
 int rpg_threshold ;
 int rpg_time_reset ;

__attribute__((used)) static u32 mlx5_get_cc_param_val(void *field, int offset)
{
 switch (offset) {
 case 140:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    clamp_tgt_rate);
 case 139:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    clamp_tgt_rate_after_time_inc);
 case 128:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_time_reset);
 case 141:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_byte_reset);
 case 129:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_threshold);
 case 142:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_ai_rate);
 case 135:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_hai_rate);
 case 133:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_min_dec_fac);
 case 132:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_min_rate);
 case 130:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rate_to_set_on_first_cnp);
 case 138:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    dce_tcp_g);
 case 137:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    dce_tcp_rtt);
 case 131:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rate_reduce_monitor_period);
 case 134:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    initial_alpha_value);
 case 136:
  return MLX5_GET(cong_control_r_roce_ecn_rp, field,
    rpg_gd);
 case 145:
  return MLX5_GET(cong_control_r_roce_ecn_np, field,
    cnp_dscp);
 case 143:
  return MLX5_GET(cong_control_r_roce_ecn_np, field,
    cnp_prio_mode);
 case 144:
  return MLX5_GET(cong_control_r_roce_ecn_np, field,
    cnp_802p_prio);
 default:
  return 0;
 }
}

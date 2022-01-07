
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 int MLX5_IB_NP_CNP_DSCP_ATTR ;
 int MLX5_IB_NP_CNP_PRIO_MODE_ATTR ;
 int MLX5_IB_RP_AI_RATE_ATTR ;
 int MLX5_IB_RP_BYTE_RESET_ATTR ;
 int MLX5_IB_RP_CLAMP_TGT_RATE_ATI_ATTR ;
 int MLX5_IB_RP_CLAMP_TGT_RATE_ATTR ;
 int MLX5_IB_RP_DCE_TCP_G_ATTR ;
 int MLX5_IB_RP_DCE_TCP_RTT_ATTR ;
 int MLX5_IB_RP_GD_ATTR ;
 int MLX5_IB_RP_HAI_RATE_ATTR ;
 int MLX5_IB_RP_INITIAL_ALPHA_VALUE_ATTR ;
 int MLX5_IB_RP_MIN_DEC_FAC_ATTR ;
 int MLX5_IB_RP_MIN_RATE_ATTR ;
 int MLX5_IB_RP_RATE_REDUCE_MONITOR_PERIOD_ATTR ;
 int MLX5_IB_RP_RATE_TO_SET_ON_FIRST_CNP_ATTR ;
 int MLX5_IB_RP_THRESHOLD_ATTR ;
 int MLX5_IB_RP_TIME_RESET_ATTR ;
 int MLX5_SET (int ,void*,int ,int ) ;
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

__attribute__((used)) static void mlx5_ib_set_cc_param_mask_val(void *field, int offset,
       u32 var, u32 *attr_mask)
{
 switch (offset) {
 case 140:
  *attr_mask |= MLX5_IB_RP_CLAMP_TGT_RATE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    clamp_tgt_rate, var);
  break;
 case 139:
  *attr_mask |= MLX5_IB_RP_CLAMP_TGT_RATE_ATI_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    clamp_tgt_rate_after_time_inc, var);
  break;
 case 128:
  *attr_mask |= MLX5_IB_RP_TIME_RESET_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_time_reset, var);
  break;
 case 141:
  *attr_mask |= MLX5_IB_RP_BYTE_RESET_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_byte_reset, var);
  break;
 case 129:
  *attr_mask |= MLX5_IB_RP_THRESHOLD_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_threshold, var);
  break;
 case 142:
  *attr_mask |= MLX5_IB_RP_AI_RATE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_ai_rate, var);
  break;
 case 135:
  *attr_mask |= MLX5_IB_RP_HAI_RATE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_hai_rate, var);
  break;
 case 133:
  *attr_mask |= MLX5_IB_RP_MIN_DEC_FAC_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_min_dec_fac, var);
  break;
 case 132:
  *attr_mask |= MLX5_IB_RP_MIN_RATE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_min_rate, var);
  break;
 case 130:
  *attr_mask |= MLX5_IB_RP_RATE_TO_SET_ON_FIRST_CNP_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rate_to_set_on_first_cnp, var);
  break;
 case 138:
  *attr_mask |= MLX5_IB_RP_DCE_TCP_G_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    dce_tcp_g, var);
  break;
 case 137:
  *attr_mask |= MLX5_IB_RP_DCE_TCP_RTT_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    dce_tcp_rtt, var);
  break;
 case 131:
  *attr_mask |= MLX5_IB_RP_RATE_REDUCE_MONITOR_PERIOD_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rate_reduce_monitor_period, var);
  break;
 case 134:
  *attr_mask |= MLX5_IB_RP_INITIAL_ALPHA_VALUE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    initial_alpha_value, var);
  break;
 case 136:
  *attr_mask |= MLX5_IB_RP_GD_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_rp, field,
    rpg_gd, var);
  break;
 case 145:
  *attr_mask |= MLX5_IB_NP_CNP_DSCP_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_np, field, cnp_dscp, var);
  break;
 case 143:
  *attr_mask |= MLX5_IB_NP_CNP_PRIO_MODE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_np, field, cnp_prio_mode, var);
  break;
 case 144:
  *attr_mask |= MLX5_IB_NP_CNP_PRIO_MODE_ATTR;
  MLX5_SET(cong_control_r_roce_ecn_np, field, cnp_prio_mode, 0);
  MLX5_SET(cong_control_r_roce_ecn_np, field, cnp_802p_prio, var);
  break;
 }
}

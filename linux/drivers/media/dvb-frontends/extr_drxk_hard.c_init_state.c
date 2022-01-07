
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef scalar_t__ u32 ;
struct TYPE_15__ {int reference; int use_pre_saw; } ;
struct TYPE_14__ {int max_output_level; int top; int speed; int ingain_tgt_max; int fast_clip_ctrl_delay; scalar_t__ cut_off_current; scalar_t__ min_output_level; scalar_t__ output_level; void* ctrl_mode; } ;
struct TYPE_13__ {int min_output_level; int max_output_level; int top; int cut_off_current; int speed; scalar_t__ output_level; void* ctrl_mode; } ;
struct TYPE_24__ {int reference; int use_pre_saw; } ;
struct TYPE_23__ {int max_output_level; int top; int speed; int fast_clip_ctrl_delay; int ingain_tgt_max; scalar_t__ cut_off_current; scalar_t__ min_output_level; scalar_t__ output_level; void* ctrl_mode; } ;
struct TYPE_22__ {int max_output_level; int top; int cut_off_current; int speed; scalar_t__ min_output_level; scalar_t__ output_level; void* ctrl_mode; } ;
struct TYPE_21__ {int reference; int use_pre_saw; } ;
struct TYPE_20__ {scalar_t__ cut_off_current; scalar_t__ top; scalar_t__ speed; scalar_t__ max_output_level; scalar_t__ min_output_level; scalar_t__ output_level; scalar_t__ ctrl_mode; } ;
struct TYPE_19__ {scalar_t__ speed; scalar_t__ max_output_level; scalar_t__ min_output_level; scalar_t__ output_level; scalar_t__ ctrl_mode; } ;
struct TYPE_18__ {int reference; int use_pre_saw; } ;
struct TYPE_17__ {scalar_t__ cut_off_current; scalar_t__ top; scalar_t__ speed; scalar_t__ max_output_level; scalar_t__ min_output_level; scalar_t__ output_level; scalar_t__ ctrl_mode; } ;
struct TYPE_16__ {scalar_t__ speed; scalar_t__ max_output_level; scalar_t__ min_output_level; scalar_t__ output_level; scalar_t__ ctrl_mode; } ;
struct drxk_state {int m_has_lna; int m_has_dvbt; int m_has_dvbc; int m_has_atv; int m_has_oob; int m_has_audio; int m_chunk_size; int m_smart_ant_inverted; int m_b_p_down_open_bridge; int m_sys_clock_freq; int m_hi_cfg_timing_div; int m_hi_cfg_wake_up_key; int demod_address; int m_b_power_down; int m_drxk_a3_patch_code; int m_vsb_pga_cfg; int m_qam_pga_cfg; int m_enable_mpeg_output; int m_insert_rs_byte; int m_invert_data; int m_invert_err; int m_invert_str; int m_invert_val; int m_invert_clk; int m_mpeg_ts_static_bitrate; int m_disable_te_ihandling; int m_fec_rs_plen; int m_fec_rs_prescale; int m_rfmirror; int m_if_agc_pol; int m_current_power_mode; scalar_t__ m_gpio_cfg; scalar_t__ m_agcfast_clip_ctrl_delay; int m_sqi_speed; int m_qam_interleave_mode; int m_constellation; void* m_demod_lock_time_out; void* m_mpeg_lock_time_out; scalar_t__ m_ts_data_strength; scalar_t__ m_dvbc_bitrate; scalar_t__ m_dvbt_bitrate; int m_drxk_state; int m_operation_mode; TYPE_12__ m_qam_pre_saw_cfg; TYPE_11__ m_qam_if_agc_cfg; TYPE_10__ m_qam_rf_agc_cfg; TYPE_9__ m_dvbt_pre_saw_cfg; TYPE_8__ m_dvbt_if_agc_cfg; TYPE_7__ m_dvbt_rf_agc_cfg; TYPE_6__ m_atv_pre_saw_cfg; TYPE_5__ m_atv_rf_agc_cfg; TYPE_4__ m_atv_if_agc_cfg; void* m_Quality93percent; void* m_Quality83percent; TYPE_3__ m_vsb_pre_saw_cfg; TYPE_2__ m_vsb_rf_agc_cfg; TYPE_1__ m_vsb_if_agc_cfg; int m_hi_cfg_ctrl; scalar_t__ m_osc_clock_freq; } ;


 void* DEFAULT_DRXK_DEMOD_LOCK_TIMEOUT ;
 void* DEFAULT_DRXK_MPEG_LOCK_TIMEOUT ;
 void* DEFAULT_MER_83 ;
 void* DEFAULT_MER_93 ;
 void* DRXK_AGC_CTRL_AUTO ;
 void* DRXK_AGC_CTRL_OFF ;
 int DRXK_DVBT_SQI_SPEED_MEDIUM ;
 scalar_t__ DRXK_MPEG_SERIAL_OUTPUT_PIN_DRIVE_STRENGTH ;
 int DRXK_QAM_I12_J17 ;
 int DRXK_QAM_SYMBOLRATE_MAX ;
 int DRXK_UNINITIALIZED ;
 int DRX_CONSTELLATION_AUTO ;
 int DRX_POWER_DOWN ;
 int HI_I2C_DELAY ;
 int OM_NONE ;
 int SIO_HI_RA_RAM_PAR_2_CFG_DIV__M ;
 int SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE ;
 int dprintk (int,char*) ;

__attribute__((used)) static int init_state(struct drxk_state *state)
{




 u32 ul_vsb_if_agc_mode = DRXK_AGC_CTRL_AUTO;
 u32 ul_vsb_if_agc_output_level = 0;
 u32 ul_vsb_if_agc_min_level = 0;
 u32 ul_vsb_if_agc_max_level = 0x7FFF;
 u32 ul_vsb_if_agc_speed = 3;

 u32 ul_vsb_rf_agc_mode = DRXK_AGC_CTRL_AUTO;
 u32 ul_vsb_rf_agc_output_level = 0;
 u32 ul_vsb_rf_agc_min_level = 0;
 u32 ul_vsb_rf_agc_max_level = 0x7FFF;
 u32 ul_vsb_rf_agc_speed = 3;
 u32 ul_vsb_rf_agc_top = 9500;
 u32 ul_vsb_rf_agc_cut_off_current = 4000;

 u32 ul_atv_if_agc_mode = DRXK_AGC_CTRL_AUTO;
 u32 ul_atv_if_agc_output_level = 0;
 u32 ul_atv_if_agc_min_level = 0;
 u32 ul_atv_if_agc_max_level = 0;
 u32 ul_atv_if_agc_speed = 3;

 u32 ul_atv_rf_agc_mode = DRXK_AGC_CTRL_OFF;
 u32 ul_atv_rf_agc_output_level = 0;
 u32 ul_atv_rf_agc_min_level = 0;
 u32 ul_atv_rf_agc_max_level = 0;
 u32 ul_atv_rf_agc_top = 9500;
 u32 ul_atv_rf_agc_cut_off_current = 4000;
 u32 ul_atv_rf_agc_speed = 3;

 u32 ulQual83 = DEFAULT_MER_83;
 u32 ulQual93 = DEFAULT_MER_93;

 u32 ul_mpeg_lock_time_out = DEFAULT_DRXK_MPEG_LOCK_TIMEOUT;
 u32 ul_demod_lock_time_out = DEFAULT_DRXK_DEMOD_LOCK_TIMEOUT;




 u32 ul_gpio_cfg = 0x0113;
 u32 ul_invert_ts_clock = 0;
 u32 ul_ts_data_strength = DRXK_MPEG_SERIAL_OUTPUT_PIN_DRIVE_STRENGTH;
 u32 ul_dvbt_bitrate = 50000000;
 u32 ul_dvbc_bitrate = DRXK_QAM_SYMBOLRATE_MAX * 8;

 u32 ul_insert_rs_byte = 0;

 u32 ul_rf_mirror = 1;
 u32 ul_power_down = 0;

 dprintk(1, "\n");

 state->m_has_lna = 0;
 state->m_has_dvbt = 0;
 state->m_has_dvbc = 0;
 state->m_has_atv = 0;
 state->m_has_oob = 0;
 state->m_has_audio = 0;

 if (!state->m_chunk_size)
  state->m_chunk_size = 124;

 state->m_osc_clock_freq = 0;
 state->m_smart_ant_inverted = 0;
 state->m_b_p_down_open_bridge = 0;


 state->m_sys_clock_freq = 151875;


 state->m_hi_cfg_timing_div = ((state->m_sys_clock_freq / 1000) *
       HI_I2C_DELAY) / 1000;

 if (state->m_hi_cfg_timing_div > SIO_HI_RA_RAM_PAR_2_CFG_DIV__M)
  state->m_hi_cfg_timing_div = SIO_HI_RA_RAM_PAR_2_CFG_DIV__M;
 state->m_hi_cfg_wake_up_key = (state->demod_address << 1);

 state->m_hi_cfg_ctrl = SIO_HI_RA_RAM_PAR_5_CFG_SLV0_SLAVE;

 state->m_b_power_down = (ul_power_down != 0);

 state->m_drxk_a3_patch_code = 0;



 state->m_vsb_if_agc_cfg.ctrl_mode = ul_vsb_if_agc_mode;
 state->m_vsb_if_agc_cfg.output_level = ul_vsb_if_agc_output_level;
 state->m_vsb_if_agc_cfg.min_output_level = ul_vsb_if_agc_min_level;
 state->m_vsb_if_agc_cfg.max_output_level = ul_vsb_if_agc_max_level;
 state->m_vsb_if_agc_cfg.speed = ul_vsb_if_agc_speed;
 state->m_vsb_pga_cfg = 140;


 state->m_vsb_rf_agc_cfg.ctrl_mode = ul_vsb_rf_agc_mode;
 state->m_vsb_rf_agc_cfg.output_level = ul_vsb_rf_agc_output_level;
 state->m_vsb_rf_agc_cfg.min_output_level = ul_vsb_rf_agc_min_level;
 state->m_vsb_rf_agc_cfg.max_output_level = ul_vsb_rf_agc_max_level;
 state->m_vsb_rf_agc_cfg.speed = ul_vsb_rf_agc_speed;
 state->m_vsb_rf_agc_cfg.top = ul_vsb_rf_agc_top;
 state->m_vsb_rf_agc_cfg.cut_off_current = ul_vsb_rf_agc_cut_off_current;
 state->m_vsb_pre_saw_cfg.reference = 0x07;
 state->m_vsb_pre_saw_cfg.use_pre_saw = 1;

 state->m_Quality83percent = DEFAULT_MER_83;
 state->m_Quality93percent = DEFAULT_MER_93;
 if (ulQual93 <= 500 && ulQual83 < ulQual93) {
  state->m_Quality83percent = ulQual83;
  state->m_Quality93percent = ulQual93;
 }


 state->m_atv_if_agc_cfg.ctrl_mode = ul_atv_if_agc_mode;
 state->m_atv_if_agc_cfg.output_level = ul_atv_if_agc_output_level;
 state->m_atv_if_agc_cfg.min_output_level = ul_atv_if_agc_min_level;
 state->m_atv_if_agc_cfg.max_output_level = ul_atv_if_agc_max_level;
 state->m_atv_if_agc_cfg.speed = ul_atv_if_agc_speed;


 state->m_atv_rf_agc_cfg.ctrl_mode = ul_atv_rf_agc_mode;
 state->m_atv_rf_agc_cfg.output_level = ul_atv_rf_agc_output_level;
 state->m_atv_rf_agc_cfg.min_output_level = ul_atv_rf_agc_min_level;
 state->m_atv_rf_agc_cfg.max_output_level = ul_atv_rf_agc_max_level;
 state->m_atv_rf_agc_cfg.speed = ul_atv_rf_agc_speed;
 state->m_atv_rf_agc_cfg.top = ul_atv_rf_agc_top;
 state->m_atv_rf_agc_cfg.cut_off_current = ul_atv_rf_agc_cut_off_current;
 state->m_atv_pre_saw_cfg.reference = 0x04;
 state->m_atv_pre_saw_cfg.use_pre_saw = 1;



 state->m_dvbt_rf_agc_cfg.ctrl_mode = DRXK_AGC_CTRL_OFF;
 state->m_dvbt_rf_agc_cfg.output_level = 0;
 state->m_dvbt_rf_agc_cfg.min_output_level = 0;
 state->m_dvbt_rf_agc_cfg.max_output_level = 0xFFFF;
 state->m_dvbt_rf_agc_cfg.top = 0x2100;
 state->m_dvbt_rf_agc_cfg.cut_off_current = 4000;
 state->m_dvbt_rf_agc_cfg.speed = 1;



 state->m_dvbt_if_agc_cfg.ctrl_mode = DRXK_AGC_CTRL_AUTO;
 state->m_dvbt_if_agc_cfg.output_level = 0;
 state->m_dvbt_if_agc_cfg.min_output_level = 0;
 state->m_dvbt_if_agc_cfg.max_output_level = 9000;
 state->m_dvbt_if_agc_cfg.top = 13424;
 state->m_dvbt_if_agc_cfg.cut_off_current = 0;
 state->m_dvbt_if_agc_cfg.speed = 3;
 state->m_dvbt_if_agc_cfg.fast_clip_ctrl_delay = 30;
 state->m_dvbt_if_agc_cfg.ingain_tgt_max = 30000;


 state->m_dvbt_pre_saw_cfg.reference = 4;
 state->m_dvbt_pre_saw_cfg.use_pre_saw = 0;


 state->m_qam_rf_agc_cfg.ctrl_mode = DRXK_AGC_CTRL_OFF;
 state->m_qam_rf_agc_cfg.output_level = 0;
 state->m_qam_rf_agc_cfg.min_output_level = 6023;
 state->m_qam_rf_agc_cfg.max_output_level = 27000;
 state->m_qam_rf_agc_cfg.top = 0x2380;
 state->m_qam_rf_agc_cfg.cut_off_current = 4000;
 state->m_qam_rf_agc_cfg.speed = 3;


 state->m_qam_if_agc_cfg.ctrl_mode = DRXK_AGC_CTRL_AUTO;
 state->m_qam_if_agc_cfg.output_level = 0;
 state->m_qam_if_agc_cfg.min_output_level = 0;
 state->m_qam_if_agc_cfg.max_output_level = 9000;
 state->m_qam_if_agc_cfg.top = 0x0511;
 state->m_qam_if_agc_cfg.cut_off_current = 0;
 state->m_qam_if_agc_cfg.speed = 3;
 state->m_qam_if_agc_cfg.ingain_tgt_max = 5119;
 state->m_qam_if_agc_cfg.fast_clip_ctrl_delay = 50;

 state->m_qam_pga_cfg = 140;
 state->m_qam_pre_saw_cfg.reference = 4;
 state->m_qam_pre_saw_cfg.use_pre_saw = 0;

 state->m_operation_mode = OM_NONE;
 state->m_drxk_state = DRXK_UNINITIALIZED;


 state->m_enable_mpeg_output = 1;
 state->m_insert_rs_byte = 0;
 state->m_invert_data = 0;
 state->m_invert_err = 0;
 state->m_invert_str = 0;
 state->m_invert_val = 0;
 state->m_invert_clk = (ul_invert_ts_clock != 0);




 state->m_dvbt_bitrate = ul_dvbt_bitrate;
 state->m_dvbc_bitrate = ul_dvbc_bitrate;

 state->m_ts_data_strength = (ul_ts_data_strength & 0x07);


 state->m_mpeg_ts_static_bitrate = 19392658;
 state->m_disable_te_ihandling = 0;

 if (ul_insert_rs_byte)
  state->m_insert_rs_byte = 1;

 state->m_mpeg_lock_time_out = DEFAULT_DRXK_MPEG_LOCK_TIMEOUT;
 if (ul_mpeg_lock_time_out < 10000)
  state->m_mpeg_lock_time_out = ul_mpeg_lock_time_out;
 state->m_demod_lock_time_out = DEFAULT_DRXK_DEMOD_LOCK_TIMEOUT;
 if (ul_demod_lock_time_out < 10000)
  state->m_demod_lock_time_out = ul_demod_lock_time_out;


 state->m_constellation = DRX_CONSTELLATION_AUTO;
 state->m_qam_interleave_mode = DRXK_QAM_I12_J17;
 state->m_fec_rs_plen = 204 * 8;
 state->m_fec_rs_prescale = 1;

 state->m_sqi_speed = DRXK_DVBT_SQI_SPEED_MEDIUM;
 state->m_agcfast_clip_ctrl_delay = 0;

 state->m_gpio_cfg = ul_gpio_cfg;

 state->m_b_power_down = 0;
 state->m_current_power_mode = DRX_POWER_DOWN;

 state->m_rfmirror = (ul_rf_mirror == 0);
 state->m_if_agc_pol = 0;
 return 0;
}

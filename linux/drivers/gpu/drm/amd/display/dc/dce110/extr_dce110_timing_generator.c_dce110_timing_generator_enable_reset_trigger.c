
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
typedef enum trigger_source_select { ____Placeholder_trigger_source_select } trigger_source_select ;


 int CRTC_FORCE_COUNT_NOW_CLEAR ;
 int CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC_FORCE_COUNT_NOW_MODE ;
 int CRTC_FORCE_COUNT_NOW_TRIG_SEL ;
 int CRTC_REG (int ) ;
 int CRTC_TRIGB_CLEAR ;
 int CRTC_TRIGB_CNTL ;
 int CRTC_TRIGB_DELAY ;
 int CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL ;
 int CRTC_TRIGB_FREQUENCY_SELECT ;
 int CRTC_TRIGB_POLARITY_SELECT ;
 int CRTC_TRIGB_RISING_EDGE_DETECT_CNTL ;
 int CRTC_TRIGB_SOURCE_SELECT ;
 int CRTC_V_SYNC_A_CNTL ;
 int CRTC_V_SYNC_A_POL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ;
 int TRIGGER_SOURCE_SELECT_GSL_GROUP0 ;
 int TRIGGER_SOURCE_SELECT_LOGIC_ZERO ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int) ;
 scalar_t__ get_reg_field_value (int,int ,int ) ;
 int mmCRTC_FORCE_COUNT_NOW_CNTL ;
 int mmCRTC_TRIGB_CNTL ;
 int mmCRTC_V_SYNC_A_CNTL ;
 int set_reg_field_value (int,int,int ,int ) ;

void dce110_timing_generator_enable_reset_trigger(
 struct timing_generator *tg,
 int source_tg_inst)
{
 uint32_t value;
 uint32_t rising_edge = 0;
 uint32_t falling_edge = 0;
 enum trigger_source_select trig_src_select = TRIGGER_SOURCE_SELECT_LOGIC_ZERO;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);


 {
  uint32_t pol_value = dm_read_reg(tg->ctx,
    CRTC_REG(mmCRTC_V_SYNC_A_CNTL));



  if (get_reg_field_value(pol_value,
    CRTC_V_SYNC_A_CNTL,
    CRTC_V_SYNC_A_POL) == 0) {
   rising_edge = 1;
  } else {
   falling_edge = 1;
  }
 }

 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_TRIGB_CNTL));

 trig_src_select = TRIGGER_SOURCE_SELECT_GSL_GROUP0;

 set_reg_field_value(value,
   trig_src_select,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_SOURCE_SELECT);

 set_reg_field_value(value,
   TRIGGER_POLARITY_SELECT_LOGIC_ZERO,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_POLARITY_SELECT);

 set_reg_field_value(value,
   rising_edge,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_RISING_EDGE_DETECT_CNTL);

 set_reg_field_value(value,
   falling_edge,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL);

 set_reg_field_value(value,
   0,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_FREQUENCY_SELECT);

 set_reg_field_value(value,
   0,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_DELAY);

 set_reg_field_value(value,
   1,
   CRTC_TRIGB_CNTL,
   CRTC_TRIGB_CLEAR);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_TRIGB_CNTL), value);



 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_FORCE_COUNT_NOW_CNTL));

 set_reg_field_value(value,
   2,
   CRTC_FORCE_COUNT_NOW_CNTL,
   CRTC_FORCE_COUNT_NOW_MODE);

 set_reg_field_value(value,
   1,
   CRTC_FORCE_COUNT_NOW_CNTL,
   CRTC_FORCE_COUNT_NOW_TRIG_SEL);

 set_reg_field_value(value,
   1,
   CRTC_FORCE_COUNT_NOW_CNTL,
   CRTC_FORCE_COUNT_NOW_CLEAR);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_FORCE_COUNT_NOW_CNTL), value);
}

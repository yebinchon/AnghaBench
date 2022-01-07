
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct crtc_trigger_info {int event; int delay; } ;


 int CRTC_AUTO_FORCE_VSYNC_MODE ;


 int CRTC_FORCE_COUNT_NOW_CLEAR ;
 int CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC_FORCE_COUNT_NOW_MODE ;
 int CRTC_FORCE_COUNT_NOW_TRIG_SEL ;
 int CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR ;
 int CRTC_MASTER_UPDATE_MODE ;
 int CRTC_REG (int ) ;
 int CRTC_TRIGB_CLEAR ;
 int CRTC_TRIGB_CNTL ;
 int CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL ;
 int CRTC_TRIGB_POLARITY_SELECT ;
 int CRTC_TRIGB_RISING_EDGE_DETECT_CNTL ;
 int CRTC_TRIGB_SOURCE_SELECT ;
 int CRTC_VERT_SYNC_CONTROL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int MASTER_UPDATE_MODE ;


 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int) ;
 int mmCRTC_FORCE_COUNT_NOW_CNTL ;
 int mmCRTC_MASTER_UPDATE_MODE ;
 int mmCRTC_TRIGB_CNTL ;
 int mmCRTC_VERT_SYNC_CONTROL ;
 int set_reg_field_value (int,int,int ,int ) ;

void dce110_timing_generator_enable_crtc_reset(
  struct timing_generator *tg,
  int source_tg_inst,
  struct crtc_trigger_info *crtc_tp)
{
 uint32_t value = 0;
 uint32_t rising_edge = 0;
 uint32_t falling_edge = 0;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);


 switch (crtc_tp->event) {
 case 130:
   rising_edge = 1;
   break;

 case 131:
  falling_edge = 1;
  break;
 }

 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_TRIGB_CNTL));

 set_reg_field_value(value,
       source_tg_inst,
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
       1,
       CRTC_TRIGB_CNTL,
       CRTC_TRIGB_CLEAR);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_TRIGB_CNTL), value);



 switch (crtc_tp->delay) {
 case 129:
  value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_FORCE_COUNT_NOW_CNTL));

  set_reg_field_value(value,
        0,
        CRTC_FORCE_COUNT_NOW_CNTL,
        CRTC_FORCE_COUNT_NOW_MODE);

  set_reg_field_value(value,
        0,
        CRTC_FORCE_COUNT_NOW_CNTL,
        CRTC_FORCE_COUNT_NOW_TRIG_SEL);

  set_reg_field_value(value,
        1,
        CRTC_FORCE_COUNT_NOW_CNTL,
        CRTC_FORCE_COUNT_NOW_CLEAR);

  dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_FORCE_COUNT_NOW_CNTL), value);

  value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_VERT_SYNC_CONTROL));

  set_reg_field_value(value,
        1,
        CRTC_VERT_SYNC_CONTROL,
        CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR);

  set_reg_field_value(value,
        2,
        CRTC_VERT_SYNC_CONTROL,
        CRTC_AUTO_FORCE_VSYNC_MODE);

  break;

 case 128:
  value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_VERT_SYNC_CONTROL));

  set_reg_field_value(value,
        1,
        CRTC_VERT_SYNC_CONTROL,
        CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR);

  set_reg_field_value(value,
        0,
        CRTC_VERT_SYNC_CONTROL,
        CRTC_AUTO_FORCE_VSYNC_MODE);

  dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_VERT_SYNC_CONTROL), value);

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
  break;
 }

 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_MASTER_UPDATE_MODE));

 set_reg_field_value(value,
       2,
       CRTC_MASTER_UPDATE_MODE,
       MASTER_UPDATE_MODE);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_MASTER_UPDATE_MODE), value);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_AUTO_FORCE_VSYNC_MODE ;
 int CRTC_FORCE_COUNT_NOW_CLEAR ;
 int CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC_FORCE_COUNT_NOW_MODE ;
 int CRTC_FORCE_VSYNC_NEXT_LINE_CLEAR ;
 int CRTC_REG (int ) ;
 int CRTC_TRIGB_CLEAR ;
 int CRTC_TRIGB_CNTL ;
 int CRTC_TRIGB_POLARITY_SELECT ;
 int CRTC_TRIGB_SOURCE_SELECT ;
 int CRTC_VERT_SYNC_CONTROL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ;
 int TRIGGER_SOURCE_SELECT_LOGIC_ZERO ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTC_FORCE_COUNT_NOW_CNTL ;
 int mmCRTC_TRIGB_CNTL ;
 int mmCRTC_VERT_SYNC_CONTROL ;
 int set_reg_field_value (int ,int,int ,int ) ;

void dce110_timing_generator_disable_reset_trigger(
 struct timing_generator *tg)
{
 uint32_t value;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_FORCE_COUNT_NOW_CNTL));

 set_reg_field_value(value,
       0,
       CRTC_FORCE_COUNT_NOW_CNTL,
       CRTC_FORCE_COUNT_NOW_MODE);

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
       0,
       CRTC_VERT_SYNC_CONTROL,
       CRTC_AUTO_FORCE_VSYNC_MODE);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_VERT_SYNC_CONTROL), value);


 value = dm_read_reg(tg->ctx, CRTC_REG(mmCRTC_TRIGB_CNTL));

 set_reg_field_value(value,
       TRIGGER_SOURCE_SELECT_LOGIC_ZERO,
       CRTC_TRIGB_CNTL,
       CRTC_TRIGB_SOURCE_SELECT);

 set_reg_field_value(value,
       TRIGGER_POLARITY_SELECT_LOGIC_ZERO,
       CRTC_TRIGB_CNTL,
       CRTC_TRIGB_POLARITY_SELECT);

 set_reg_field_value(value,
       1,
       CRTC_TRIGB_CNTL,
       CRTC_TRIGB_CLEAR);

 dm_write_reg(tg->ctx, CRTC_REG(mmCRTC_TRIGB_CNTL), value);
}

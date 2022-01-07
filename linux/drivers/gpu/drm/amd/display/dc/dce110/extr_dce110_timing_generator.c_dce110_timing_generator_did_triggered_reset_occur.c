
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC_FORCE_COUNT_NOW_OCCURRED ;
 int CRTC_FORCE_VSYNC_NEXT_LINE_OCCURRED ;
 int CRTC_REG (int ) ;
 int CRTC_VERT_SYNC_CONTROL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg (int ,int ) ;
 scalar_t__ get_reg_field_value (int ,int ,int ) ;
 int mmCRTC_FORCE_COUNT_NOW_CNTL ;
 int mmCRTC_VERT_SYNC_CONTROL ;

bool dce110_timing_generator_did_triggered_reset_occur(
 struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = dm_read_reg(tg->ctx,
   CRTC_REG(mmCRTC_FORCE_COUNT_NOW_CNTL));
 uint32_t value1 = dm_read_reg(tg->ctx,
   CRTC_REG(mmCRTC_VERT_SYNC_CONTROL));
 bool force = get_reg_field_value(value,
      CRTC_FORCE_COUNT_NOW_CNTL,
      CRTC_FORCE_COUNT_NOW_OCCURRED) != 0;
 bool vert_sync = get_reg_field_value(value1,
          CRTC_VERT_SYNC_CONTROL,
          CRTC_FORCE_VSYNC_NEXT_LINE_OCCURRED) != 0;

 return (force || vert_sync);
}

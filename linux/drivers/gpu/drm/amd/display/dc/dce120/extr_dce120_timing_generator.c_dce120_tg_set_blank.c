
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;


 int CRTC0_CRTC_BLANK_CONTROL ;
 int CRTC0_CRTC_DOUBLE_BUFFER_CONTROL ;
 int CRTC_BLANK_DATA_DOUBLE_BUFFER_EN ;
 int CRTC_BLANK_DATA_EN ;
 int CRTC_REG_SET (int ,int ,int) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_write_reg_soc15 (int ,int ,int ,int ) ;
 int mmCRTC0_CRTC_BLANK_CONTROL ;

void dce120_tg_set_blank(struct timing_generator *tg,
  bool enable_blanking)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 CRTC_REG_SET(
  CRTC0_CRTC_DOUBLE_BUFFER_CONTROL,
  CRTC_BLANK_DATA_DOUBLE_BUFFER_EN, 1);

 if (enable_blanking)
  CRTC_REG_SET(CRTC0_CRTC_BLANK_CONTROL, CRTC_BLANK_DATA_EN, 1);
 else
  dm_write_reg_soc15(tg->ctx, mmCRTC0_CRTC_BLANK_CONTROL,
   tg110->offsets.crtc, 0);
}

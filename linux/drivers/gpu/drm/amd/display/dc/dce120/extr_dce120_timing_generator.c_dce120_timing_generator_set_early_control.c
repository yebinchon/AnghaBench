
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC0_CRTC_CONTROL ;
 int CRTC_HBLANK_EARLY_CONTROL ;
 int CRTC_REG_UPDATE (int ,int ,int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;

void dce120_timing_generator_set_early_control(
  struct timing_generator *tg,
  uint32_t early_cntl)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 CRTC_REG_UPDATE(CRTC0_CRTC_CONTROL,
   CRTC_HBLANK_EARLY_CONTROL, early_cntl);
}

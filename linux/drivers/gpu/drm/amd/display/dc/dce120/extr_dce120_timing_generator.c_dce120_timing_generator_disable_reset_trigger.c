
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC0_CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC0_CRTC_TRIGB_CNTL ;
 int CRTC_FORCE_COUNT_NOW_CLEAR ;
 int CRTC_FORCE_COUNT_NOW_MODE ;
 int CRTC_REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int CRTC_REG_UPDATE_3 (int ,int ,int ,int ,int ,int ,int) ;
 int CRTC_TRIGB_CLEAR ;
 int CRTC_TRIGB_POLARITY_SELECT ;
 int CRTC_TRIGB_SOURCE_SELECT ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ;
 int TRIGGER_SOURCE_SELECT_LOGIC_ZERO ;

void dce120_timing_generator_disable_reset_trigger(
 struct timing_generator *tg)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 CRTC_REG_UPDATE_2(
  CRTC0_CRTC_FORCE_COUNT_NOW_CNTL,
  CRTC_FORCE_COUNT_NOW_MODE, 0,
  CRTC_FORCE_COUNT_NOW_CLEAR, 1);

 CRTC_REG_UPDATE_3(
  CRTC0_CRTC_TRIGB_CNTL,
  CRTC_TRIGB_SOURCE_SELECT, TRIGGER_SOURCE_SELECT_LOGIC_ZERO,
  CRTC_TRIGB_POLARITY_SELECT, TRIGGER_POLARITY_SELECT_LOGIC_ZERO,

  CRTC_TRIGB_CLEAR, 1);

}

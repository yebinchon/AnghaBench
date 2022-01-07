
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct drr_params {scalar_t__ vertical_total_max; scalar_t__ vertical_total_min; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC0_CRTC_STATIC_SCREEN_CONTROL ;
 int CRTC0_CRTC_V_TOTAL_CONTROL ;
 int CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT ;
 int CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC ;
 int CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK ;
 int CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK_EN ;
 int CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL ;
 int CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL ;
 int CRTC0_CRTC_V_TOTAL_MAX ;
 int CRTC0_CRTC_V_TOTAL_MIN ;
 int CRTC_REG_SET_N (int ,int,int ,int,int ,int,int ,int ,int ,int ,int ,int ,...) ;
 int CRTC_REG_UPDATE (int ,int ,int) ;
 int CRTC_STATIC_SCREEN_EVENT_MASK ;
 int CRTC_V_TOTAL_MAX ;
 int CRTC_V_TOTAL_MIN ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int FD (int ) ;

void dce120_timing_generator_set_drr(
 struct timing_generator *tg,
 const struct drr_params *params)
{

 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 if (params != ((void*)0) &&
  params->vertical_total_max > 0 &&
  params->vertical_total_min > 0) {

  CRTC_REG_UPDATE(
    CRTC0_CRTC_V_TOTAL_MIN,
    CRTC_V_TOTAL_MIN, params->vertical_total_min - 1);
  CRTC_REG_UPDATE(
    CRTC0_CRTC_V_TOTAL_MAX,
    CRTC_V_TOTAL_MAX, params->vertical_total_max - 1);
  CRTC_REG_SET_N(CRTC0_CRTC_V_TOTAL_CONTROL, 6,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL), 1,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL), 1,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK_EN), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK), 0);
  CRTC_REG_UPDATE(
    CRTC0_CRTC_STATIC_SCREEN_CONTROL,
    CRTC_STATIC_SCREEN_EVENT_MASK,
    0x180);

 } else {
  CRTC_REG_SET_N(CRTC0_CRTC_V_TOTAL_CONTROL, 5,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MIN_SEL), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_V_TOTAL_MAX_SEL), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_ON_EVENT), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_FORCE_LOCK_TO_MASTER_VSYNC), 0,
    FD(CRTC0_CRTC_V_TOTAL_CONTROL__CRTC_SET_V_TOTAL_MIN_MASK), 0);
  CRTC_REG_UPDATE(
    CRTC0_CRTC_V_TOTAL_MIN,
    CRTC_V_TOTAL_MIN, 0);
  CRTC_REG_UPDATE(
    CRTC0_CRTC_V_TOTAL_MAX,
    CRTC_V_TOTAL_MAX, 0);
  CRTC_REG_UPDATE(
    CRTC0_CRTC_STATIC_SCREEN_CONTROL,
    CRTC_STATIC_SCREEN_EVENT_MASK,
    0);
 }
}

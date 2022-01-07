
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct timing_generator {TYPE_1__* funcs; } ;
struct optc {int dummy; } ;
struct drr_params {scalar_t__ vertical_total_max; scalar_t__ vertical_total_min; scalar_t__ vertical_total_mid; scalar_t__ vertical_total_mid_frame_num; } ;
struct TYPE_2__ {int (* setup_manual_trigger ) (struct timing_generator*) ;} ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_FORCE_LOCK_ON_EVENT ;
 int OTG_SET_V_TOTAL_MIN_MASK ;
 int OTG_SET_V_TOTAL_MIN_MASK_EN ;
 int OTG_VTOTAL_MID_FRAME_NUM ;
 int OTG_VTOTAL_MID_REPLACING_MAX_EN ;
 int OTG_V_TOTAL_CONTROL ;
 int OTG_V_TOTAL_MAX ;
 int OTG_V_TOTAL_MAX_SEL ;
 int OTG_V_TOTAL_MID ;
 int OTG_V_TOTAL_MIN ;
 int OTG_V_TOTAL_MIN_SEL ;
 int REG_SET (int ,int ,int ,scalar_t__) ;
 int REG_UPDATE_2 (int ,int ,int,int ,int ) ;
 int REG_UPDATE_4 (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int REG_UPDATE_5 (int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ) ;
 int stub1 (struct timing_generator*) ;

void optc1_set_drr(
 struct timing_generator *optc,
 const struct drr_params *params)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 if (params != ((void*)0) &&
  params->vertical_total_max > 0 &&
  params->vertical_total_min > 0) {

  if (params->vertical_total_mid != 0) {

   REG_SET(OTG_V_TOTAL_MID, 0,
    OTG_V_TOTAL_MID, params->vertical_total_mid - 1);

   REG_UPDATE_2(OTG_V_TOTAL_CONTROL,
     OTG_VTOTAL_MID_REPLACING_MAX_EN, 1,
     OTG_VTOTAL_MID_FRAME_NUM,
     (uint8_t)params->vertical_total_mid_frame_num);

  }

  REG_SET(OTG_V_TOTAL_MAX, 0,
   OTG_V_TOTAL_MAX, params->vertical_total_max - 1);

  REG_SET(OTG_V_TOTAL_MIN, 0,
   OTG_V_TOTAL_MIN, params->vertical_total_min - 1);

  REG_UPDATE_5(OTG_V_TOTAL_CONTROL,
    OTG_V_TOTAL_MIN_SEL, 1,
    OTG_V_TOTAL_MAX_SEL, 1,
    OTG_FORCE_LOCK_ON_EVENT, 0,
    OTG_SET_V_TOTAL_MIN_MASK_EN, 0,
    OTG_SET_V_TOTAL_MIN_MASK, 0);


  optc->funcs->setup_manual_trigger(optc);

 } else {
  REG_UPDATE_4(OTG_V_TOTAL_CONTROL,
    OTG_SET_V_TOTAL_MIN_MASK, 0,
    OTG_V_TOTAL_MIN_SEL, 0,
    OTG_V_TOTAL_MAX_SEL, 0,
    OTG_FORCE_LOCK_ON_EVENT, 0);

  REG_SET(OTG_V_TOTAL_MIN, 0,
   OTG_V_TOTAL_MIN, 0);

  REG_SET(OTG_V_TOTAL_MAX, 0,
   OTG_V_TOTAL_MAX, 0);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;
typedef enum trigger_source_select { ____Placeholder_trigger_source_select } trigger_source_select ;


 int CRTC0_CRTC_FORCE_COUNT_NOW_CNTL ;
 int CRTC0_CRTC_TRIGB_CNTL ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_CLEAR ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_DELAY ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FREQUENCY_SELECT ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_POLARITY_SELECT ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_RISING_EDGE_DETECT_CNTL ;
 int CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_SOURCE_SELECT ;
 int CRTC0_CRTC_V_SYNC_A_CNTL ;
 int CRTC_FORCE_COUNT_NOW_CLEAR ;
 int CRTC_FORCE_COUNT_NOW_MODE ;
 int CRTC_FORCE_COUNT_NOW_TRIG_SEL ;
 int CRTC_REG_UPDATE_3 (int ,int ,int,int ,int,int ,int) ;
 int CRTC_REG_UPDATE_N (int ,int,int ,int,int ,int ,int ,int,int ,int,int ,int ,int ,int ,int ,int) ;
 int CRTC_V_SYNC_A_POL ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int FD (int ) ;
 int TRIGGER_POLARITY_SELECT_LOGIC_ZERO ;
 int TRIGGER_SOURCE_SELECT_GSL_GROUP0 ;
 int TRIGGER_SOURCE_SELECT_LOGIC_ZERO ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 scalar_t__ get_reg_field_value (int,int ,int ) ;
 int mmCRTC0_CRTC_V_SYNC_A_CNTL ;

void dce120_timing_generator_enable_reset_trigger(
 struct timing_generator *tg,
 int source)
{
 enum trigger_source_select trig_src_select = TRIGGER_SOURCE_SELECT_LOGIC_ZERO;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t rising_edge = 0;
 uint32_t falling_edge = 0;

 uint32_t pol_value = dm_read_reg_soc15(
         tg->ctx,
         mmCRTC0_CRTC_V_SYNC_A_CNTL,
         tg110->offsets.crtc);



 if (get_reg_field_value(pol_value,
   CRTC0_CRTC_V_SYNC_A_CNTL,
   CRTC_V_SYNC_A_POL) == 0) {
  rising_edge = 1;
 } else {
  falling_edge = 1;
 }


 trig_src_select = TRIGGER_SOURCE_SELECT_GSL_GROUP0;

 CRTC_REG_UPDATE_N(CRTC0_CRTC_TRIGB_CNTL, 7,
  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_SOURCE_SELECT), trig_src_select,
  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_POLARITY_SELECT), TRIGGER_POLARITY_SELECT_LOGIC_ZERO,
  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_RISING_EDGE_DETECT_CNTL), rising_edge,
  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FALLING_EDGE_DETECT_CNTL), falling_edge,

  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_FREQUENCY_SELECT), 0,

  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_DELAY), 0,

  FD(CRTC0_CRTC_TRIGB_CNTL__CRTC_TRIGB_CLEAR), 1);

 CRTC_REG_UPDATE_3(
   CRTC0_CRTC_FORCE_COUNT_NOW_CNTL,
   CRTC_FORCE_COUNT_NOW_MODE, 2,
   CRTC_FORCE_COUNT_NOW_TRIG_SEL, 1,
   CRTC_FORCE_COUNT_NOW_CLEAR, 1);
}

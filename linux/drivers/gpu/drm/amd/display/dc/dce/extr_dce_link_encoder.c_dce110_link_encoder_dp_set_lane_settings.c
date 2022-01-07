
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int POST_CURSOR2_SET; int PRE_EMPHASIS_SET; int VOLTAGE_SWING_SET; } ;
struct TYPE_6__ {int member_0; } ;
union dpcd_training_lane_set {int raw; TYPE_4__ bits; TYPE_1__ member_0; } ;
struct TYPE_8__ {size_t lane_count; int link_rate; } ;
struct link_training_settings {TYPE_5__* lane_settings; TYPE_3__ link_settings; } ;
struct link_encoder {int dummy; } ;
struct TYPE_7__ {int hpd_source; int connector; int transmitter; } ;
struct dce110_link_encoder {TYPE_2__ base; } ;
struct bp_transmitter_control {size_t lanes_number; int pixel_clock; size_t lane_select; int lane_settings; int hpd_sel; int connector_obj_id; int transmitter; int action; int member_0; } ;
typedef size_t int32_t ;
struct TYPE_10__ {int POST_CURSOR2; int PRE_EMPHASIS; int VOLTAGE_SWING; } ;


 int BREAK_TO_DEBUGGER () ;
 int LINK_RATE_HIGH2 ;
 int LINK_RATE_REF_FREQ_IN_KHZ ;
 struct dce110_link_encoder* TO_DCE110_LINK_ENC (struct link_encoder*) ;
 int TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS ;
 int link_transmitter_control (struct dce110_link_encoder*,struct bp_transmitter_control*) ;

void dce110_link_encoder_dp_set_lane_settings(
 struct link_encoder *enc,
 const struct link_training_settings *link_settings)
{
 struct dce110_link_encoder *enc110 = TO_DCE110_LINK_ENC(enc);
 union dpcd_training_lane_set training_lane_set = { { 0 } };
 int32_t lane = 0;
 struct bp_transmitter_control cntl = { 0 };

 if (!link_settings) {
  BREAK_TO_DEBUGGER();
  return;
 }

 cntl.action = TRANSMITTER_CONTROL_SET_VOLTAGE_AND_PREEMPASIS;
 cntl.transmitter = enc110->base.transmitter;
 cntl.connector_obj_id = enc110->base.connector;
 cntl.lanes_number = link_settings->link_settings.lane_count;
 cntl.hpd_sel = enc110->base.hpd_source;
 cntl.pixel_clock = link_settings->link_settings.link_rate *
      LINK_RATE_REF_FREQ_IN_KHZ;

 for (lane = 0; lane < link_settings->link_settings.lane_count; lane++) {


  training_lane_set.bits.VOLTAGE_SWING_SET =
   link_settings->lane_settings[lane].VOLTAGE_SWING;
  training_lane_set.bits.PRE_EMPHASIS_SET =
   link_settings->lane_settings[lane].PRE_EMPHASIS;


  if (link_settings->link_settings.link_rate == LINK_RATE_HIGH2) {



   training_lane_set.bits.POST_CURSOR2_SET =
    link_settings->lane_settings[lane].POST_CURSOR2;
  }

  cntl.lane_select = lane;
  cntl.lane_settings = training_lane_set.raw;


  link_transmitter_control(enc110, &cntl);
 }
}

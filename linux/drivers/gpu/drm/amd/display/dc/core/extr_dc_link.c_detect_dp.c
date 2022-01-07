
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct display_sink_capability {scalar_t__ transaction_type; void* signal; } ;
struct TYPE_4__ {int SINK_COUNT; } ;
struct TYPE_5__ {TYPE_1__ bits; } ;
struct TYPE_6__ {scalar_t__ dongle_type; TYPE_2__ sink_count; } ;
struct dc_link {scalar_t__ type; int ddc; TYPE_3__ dpcd_caps; int ctx; } ;
struct audio_support {int dummy; } ;
typedef enum dc_detect_reason { ____Placeholder_dc_detect_reason } dc_detect_reason ;


 scalar_t__ DDC_TRANSACTION_TYPE_I2C_OVER_AUX ;
 int DETECT_REASON_BOOT ;
 scalar_t__ DISPLAY_DONGLE_DP_HDMI_CONVERTER ;
 void* SIGNAL_TYPE_DISPLAY_PORT ;
 void* SIGNAL_TYPE_DISPLAY_PORT_MST ;
 int dal_ddc_service_set_transaction_type (int ,scalar_t__) ;
 scalar_t__ dc_connection_active_dongle ;
 scalar_t__ dc_connection_mst_branch ;
 scalar_t__ dc_connection_single ;
 int detect_dp_sink_caps (struct dc_link*) ;
 int dm_helpers_dp_mst_start_top_mgr (int ,struct dc_link*,int) ;
 int dm_helpers_dp_update_branch_info (int ,struct dc_link*) ;
 void* dp_passive_dongle_detection (int ,struct display_sink_capability*,struct audio_support*) ;
 scalar_t__ get_ddc_transaction_type (void*) ;
 scalar_t__ is_dp_active_dongle (struct dc_link*) ;
 scalar_t__ is_mst_supported (struct dc_link*) ;
 void* link_detect_sink (struct dc_link*,int) ;
 int link_disconnect_sink (struct dc_link*) ;

__attribute__((used)) static bool detect_dp(
 struct dc_link *link,
 struct display_sink_capability *sink_caps,
 bool *converter_disable_audio,
 struct audio_support *audio_support,
 enum dc_detect_reason reason)
{
 bool boot = 0;
 sink_caps->signal = link_detect_sink(link, reason);
 sink_caps->transaction_type =
  get_ddc_transaction_type(sink_caps->signal);

 if (sink_caps->transaction_type == DDC_TRANSACTION_TYPE_I2C_OVER_AUX) {
  sink_caps->signal = SIGNAL_TYPE_DISPLAY_PORT;
  if (!detect_dp_sink_caps(link))
   return 0;

  if (is_mst_supported(link)) {
   sink_caps->signal = SIGNAL_TYPE_DISPLAY_PORT_MST;
   link->type = dc_connection_mst_branch;

   dal_ddc_service_set_transaction_type(
       link->ddc,
       sink_caps->transaction_type);
   if (reason == DETECT_REASON_BOOT)
    boot = 1;

   dm_helpers_dp_update_branch_info(
    link->ctx,
    link);

   if (!dm_helpers_dp_mst_start_top_mgr(
    link->ctx,
    link, boot)) {

    link->type = dc_connection_single;
    sink_caps->signal = SIGNAL_TYPE_DISPLAY_PORT;
   }
  }

  if (link->type != dc_connection_mst_branch &&
   is_dp_active_dongle(link)) {

   link->type = dc_connection_active_dongle;
   if (!link->dpcd_caps.sink_count.bits.SINK_COUNT) {



    link_disconnect_sink(link);
    return 1;
   }

   if (link->dpcd_caps.dongle_type != DISPLAY_DONGLE_DP_HDMI_CONVERTER)
    *converter_disable_audio = 1;
  }
 } else {

  sink_caps->signal = dp_passive_dongle_detection(link->ddc,
    sink_caps,
    audio_support);
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_stream_state {scalar_t__ signal; struct dc_link* link; int timing; } ;
struct dc_link_settings {scalar_t__ lane_count; scalar_t__ link_rate; } ;
struct dc_link {scalar_t__ connector_signal; struct dc_link_settings verified_link_cap; struct dc_link_settings preferred_link_setting; } ;


 int ASSERT (int) ;
 int BREAK_TO_DEBUGGER () ;
 scalar_t__ LANE_COUNT_UNKNOWN ;
 scalar_t__ LINK_RATE_UNKNOWN ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT_MST ;
 scalar_t__ SIGNAL_TYPE_EDP ;
 int dc_bandwidth_in_kbps_from_timing (int *) ;
 scalar_t__ decide_dp_link_settings (struct dc_link*,struct dc_link_settings*,int ) ;
 scalar_t__ decide_edp_link_settings (struct dc_link*,struct dc_link_settings*,int ) ;

void decide_link_settings(struct dc_stream_state *stream,
 struct dc_link_settings *link_setting)
{
 struct dc_link *link;
 uint32_t req_bw;

 req_bw = dc_bandwidth_in_kbps_from_timing(&stream->timing);

 link = stream->link;




 if (link->preferred_link_setting.lane_count !=
   LANE_COUNT_UNKNOWN &&
   link->preferred_link_setting.link_rate !=
     LINK_RATE_UNKNOWN) {
  *link_setting = link->preferred_link_setting;
  return;
 }




 if (stream->signal == SIGNAL_TYPE_DISPLAY_PORT_MST) {
  *link_setting = link->verified_link_cap;
  return;
 }

 if (link->connector_signal == SIGNAL_TYPE_EDP) {
  if (decide_edp_link_settings(link, link_setting, req_bw))
   return;
 } else if (decide_dp_link_settings(link, link_setting, req_bw))
  return;

 BREAK_TO_DEBUGGER();
 ASSERT(link->verified_link_cap.lane_count != LANE_COUNT_UNKNOWN);

 *link_setting = link->verified_link_cap;
}

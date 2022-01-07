
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PANEL_MODE_EDP; } ;
union dpcd_edp_config {int raw; TYPE_1__ bits; } ;
struct TYPE_4__ {int panel_mode_edp; } ;
struct dc_link {TYPE_2__ dpcd_caps; int link_index; } ;
typedef enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;
typedef enum ddc_result { ____Placeholder_ddc_result } ddc_result ;


 int ASSERT (int) ;
 int DC_LOG_DETECTION_DP_CAPS (char*,int ,int ,int) ;
 int DDC_RESULT_SUCESSFULL ;
 int DDC_RESULT_UNKNOWN ;
 int DP_EDP_CONFIGURATION_SET ;
 int DP_PANEL_MODE_DEFAULT ;


 int core_link_read_dpcd (struct dc_link*,int ,int *,int) ;
 int core_link_write_dpcd (struct dc_link*,int ,int *,int) ;
 int memset (union dpcd_edp_config*,char,int) ;

void dp_set_panel_mode(struct dc_link *link, enum dp_panel_mode panel_mode)
{
 union dpcd_edp_config edp_config_set;
 bool panel_mode_edp = 0;

 memset(&edp_config_set, '\0', sizeof(union dpcd_edp_config));

 if (panel_mode != DP_PANEL_MODE_DEFAULT) {

  switch (panel_mode) {
  case 129:
  case 128:
   panel_mode_edp = 1;
   break;

  default:
    break;
  }


  core_link_read_dpcd(
   link,
   DP_EDP_CONFIGURATION_SET,
   &edp_config_set.raw,
   sizeof(edp_config_set.raw));

  if (edp_config_set.bits.PANEL_MODE_EDP
   != panel_mode_edp) {
   enum ddc_result result = DDC_RESULT_UNKNOWN;

   edp_config_set.bits.PANEL_MODE_EDP =
   panel_mode_edp;
   result = core_link_write_dpcd(
    link,
    DP_EDP_CONFIGURATION_SET,
    &edp_config_set.raw,
    sizeof(edp_config_set.raw));

   ASSERT(result == DDC_RESULT_SUCESSFULL);
  }
 }
 DC_LOG_DETECTION_DP_CAPS("Link: %d eDP panel mode supported: %d "
   "eDP panel mode enabled: %d \n",
   link->link_index,
   link->dpcd_caps.panel_mode_edp,
   panel_mode_edp);
}

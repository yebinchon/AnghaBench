
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int branch_dev_id; scalar_t__ panel_mode_edp; int branch_dev_name; } ;
struct dc_link {scalar_t__ connector_signal; TYPE_1__ dpcd_caps; } ;
typedef enum dp_panel_mode { ____Placeholder_dp_panel_mode } dp_panel_mode ;




 int DP_PANEL_MODE_DEFAULT ;
 int DP_PANEL_MODE_EDP ;
 int DP_PANEL_MODE_SPECIAL ;
 int DP_VGA_LVDS_CONVERTER_ID_2 ;
 int DP_VGA_LVDS_CONVERTER_ID_3 ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT ;
 int strncmp (int ,int ,int) ;

enum dp_panel_mode dp_get_panel_mode(struct dc_link *link)
{




 if (link->connector_signal != SIGNAL_TYPE_DISPLAY_PORT) {

  switch (link->dpcd_caps.branch_dev_id) {
  case 128:






   if (strncmp(
    link->dpcd_caps.branch_dev_name,
    DP_VGA_LVDS_CONVERTER_ID_2,
    sizeof(
    link->dpcd_caps.
    branch_dev_name)) == 0) {
     return DP_PANEL_MODE_SPECIAL;
   }
   break;
  case 129:





   if (strncmp(link->dpcd_caps.branch_dev_name,
    DP_VGA_LVDS_CONVERTER_ID_3,
    sizeof(
    link->dpcd_caps.
    branch_dev_name)) == 0) {
     return DP_PANEL_MODE_SPECIAL;
   }
   break;
  default:
   break;
  }
 }

 if (link->dpcd_caps.panel_mode_edp) {
  return DP_PANEL_MODE_EDP;
 }

 return DP_PANEL_MODE_DEFAULT;
}

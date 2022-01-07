
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_rate; int link_spread; int lane_count; } ;
struct link_training_settings {TYPE_2__* lane_settings; TYPE_1__ link_settings; } ;
struct dc_link {int dummy; } ;
typedef enum link_training_result { ____Placeholder_link_training_result } link_training_result ;
struct TYPE_4__ {int PRE_EMPHASIS; int VOLTAGE_SWING; } ;


 int CONN_MSG_LT (struct dc_link*,char*,char*,int ,char*,int ,int ,char*) ;
__attribute__((used)) static void print_status_message(
 struct dc_link *link,
 const struct link_training_settings *lt_settings,
 enum link_training_result status)
{
 char *link_rate = "Unknown";
 char *lt_result = "Unknown";
 char *lt_spread = "Disabled";

 switch (lt_settings->link_settings.link_rate) {
 case 139:
  link_rate = "RBR";
  break;
 case 142:
  link_rate = "HBR";
  break;
 case 141:
  link_rate = "HBR2";
  break;
 case 138:
  link_rate = "RBR2";
  break;
 case 140:
  link_rate = "HBR3";
  break;
 default:
  break;
 }

 switch (status) {
 case 128:
  lt_result = "pass";
  break;
 case 134:
  lt_result = "CR failed lane0";
  break;
 case 133:
  lt_result = "CR failed lane1";
  break;
 case 132:
  lt_result = "CR failed lane23";
  break;
 case 131:
  lt_result = "CR failed in EQ";
  break;
 case 130:
  lt_result = "EQ failed";
  break;
 case 129:
  lt_result = "LQA failed";
  break;
 default:
  break;
 }

 switch (lt_settings->link_settings.link_spread) {
 case 135:
  lt_spread = "Disabled";
  break;
 case 137:
  lt_spread = "0.5% 30KHz";
  break;
 case 136:
  lt_spread = "0.5% 33KHz";
  break;
 default:
  break;
 }


 CONN_MSG_LT(link, "%sx%d %s VS=%d, PE=%d, DS=%s",
    link_rate,
    lt_settings->link_settings.lane_count,
    lt_result,
    lt_settings->lane_settings[0].VOLTAGE_SWING,
    lt_settings->lane_settings[0].PRE_EMPHASIS,
    lt_spread);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int link_rate; int lane_count; } ;
struct dc_link {scalar_t__ connector_signal; TYPE_1__ verified_link_cap; } ;
struct TYPE_4__ {int override_edid; } ;
struct amdgpu_dm_connector {TYPE_2__ base; scalar_t__ dc_link; } ;


 int LANE_COUNT_FOUR ;
 int LINK_RATE_HIGH2 ;
 scalar_t__ SIGNAL_TYPE_DISPLAY_PORT ;
 int create_eml_sink (struct amdgpu_dm_connector*) ;

__attribute__((used)) static void handle_edid_mgmt(struct amdgpu_dm_connector *aconnector)
{
 struct dc_link *link = (struct dc_link *)aconnector->dc_link;





 if (link->connector_signal == SIGNAL_TYPE_DISPLAY_PORT) {
  link->verified_link_cap.lane_count = LANE_COUNT_FOUR;
  link->verified_link_cap.link_rate = LINK_RATE_HIGH2;
 }


 aconnector->base.override_edid = 1;
 create_eml_sink(aconnector);
}

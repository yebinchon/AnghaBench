
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_sideband_msg_tx {int path_msg; } ;
struct TYPE_3__ {int port_number; } ;
struct TYPE_4__ {TYPE_1__ port_num; } ;
struct drm_dp_sideband_msg_req_body {TYPE_2__ u; int req_type; } ;


 int DP_POWER_DOWN_PHY ;
 int DP_POWER_UP_PHY ;
 int drm_dp_encode_sideband_req (struct drm_dp_sideband_msg_req_body*,struct drm_dp_sideband_msg_tx*) ;

__attribute__((used)) static int build_power_updown_phy(struct drm_dp_sideband_msg_tx *msg,
      int port_num, bool power_up)
{
 struct drm_dp_sideband_msg_req_body req;

 if (power_up)
  req.req_type = DP_POWER_UP_PHY;
 else
  req.req_type = DP_POWER_DOWN_PHY;

 req.u.port_num.port_number = port_num;
 drm_dp_encode_sideband_req(&req, msg);
 msg->path_msg = 1;
 return 0;
}

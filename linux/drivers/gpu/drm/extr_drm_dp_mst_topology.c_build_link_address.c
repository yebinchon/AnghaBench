
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_sideband_msg_tx {int dummy; } ;
struct drm_dp_sideband_msg_req_body {int req_type; } ;


 int DP_LINK_ADDRESS ;
 int drm_dp_encode_sideband_req (struct drm_dp_sideband_msg_req_body*,struct drm_dp_sideband_msg_tx*) ;

__attribute__((used)) static int build_link_address(struct drm_dp_sideband_msg_tx *msg)
{
 struct drm_dp_sideband_msg_req_body req;

 req.req_type = DP_LINK_ADDRESS;
 drm_dp_encode_sideband_req(&req, msg);
 return 0;
}

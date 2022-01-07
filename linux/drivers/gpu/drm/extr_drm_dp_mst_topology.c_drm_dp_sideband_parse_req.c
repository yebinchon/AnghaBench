
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_dp_sideband_msg_rx {int* msg; } ;
struct drm_dp_sideband_msg_req_body {int req_type; } ;




 int DRM_ERROR (char*,int,int ) ;
 int drm_dp_mst_req_type_str (int) ;
 int drm_dp_sideband_parse_connection_status_notify (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_req_body*) ;
 int drm_dp_sideband_parse_resource_status_notify (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_req_body*) ;
 int memset (struct drm_dp_sideband_msg_req_body*,int ,int) ;

__attribute__((used)) static bool drm_dp_sideband_parse_req(struct drm_dp_sideband_msg_rx *raw,
          struct drm_dp_sideband_msg_req_body *msg)
{
 memset(msg, 0, sizeof(*msg));
 msg->req_type = (raw->msg[0] & 0x7f);

 switch (msg->req_type) {
 case 129:
  return drm_dp_sideband_parse_connection_status_notify(raw, msg);
 case 128:
  return drm_dp_sideband_parse_resource_status_notify(raw, msg);
 default:
  DRM_ERROR("Got unknown request 0x%02x (%s)\n", msg->req_type,
     drm_dp_mst_req_type_str(msg->req_type));
  return 0;
 }
}

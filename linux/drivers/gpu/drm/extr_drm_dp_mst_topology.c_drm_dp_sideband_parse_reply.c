
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_sideband_msg_rx {int* msg; } ;
struct TYPE_3__ {int reason; int nak_data; int guid; } ;
struct TYPE_4__ {TYPE_1__ nak; } ;
struct drm_dp_sideband_msg_reply_body {int reply_type; int req_type; TYPE_2__ u; } ;
 int DP_SIDEBAND_REPLY_NAK ;
 int DRM_ERROR (char*,int,int ) ;
 int drm_dp_mst_req_type_str (int) ;
 int drm_dp_sideband_parse_allocate_payload_ack (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_enum_path_resources_ack (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_link_address (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_power_updown_phy_ack (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_query_payload_ack (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_remote_dpcd_read (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_remote_dpcd_write (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int drm_dp_sideband_parse_remote_i2c_read_ack (struct drm_dp_sideband_msg_rx*,struct drm_dp_sideband_msg_reply_body*) ;
 int memcpy (int ,int*,int) ;
 int memset (struct drm_dp_sideband_msg_reply_body*,int ,int) ;

__attribute__((used)) static bool drm_dp_sideband_parse_reply(struct drm_dp_sideband_msg_rx *raw,
     struct drm_dp_sideband_msg_reply_body *msg)
{
 memset(msg, 0, sizeof(*msg));
 msg->reply_type = (raw->msg[0] & 0x80) >> 7;
 msg->req_type = (raw->msg[0] & 0x7f);

 if (msg->reply_type == DP_SIDEBAND_REPLY_NAK) {
  memcpy(msg->u.nak.guid, &raw->msg[1], 16);
  msg->u.nak.reason = raw->msg[17];
  msg->u.nak.nak_data = raw->msg[18];
  return 0;
 }

 switch (msg->req_type) {
 case 134:
  return drm_dp_sideband_parse_link_address(raw, msg);
 case 131:
  return drm_dp_sideband_parse_query_payload_ack(raw, msg);
 case 130:
  return drm_dp_sideband_parse_remote_dpcd_read(raw, msg);
 case 129:
  return drm_dp_sideband_parse_remote_dpcd_write(raw, msg);
 case 128:
  return drm_dp_sideband_parse_remote_i2c_read_ack(raw, msg);
 case 135:
  return drm_dp_sideband_parse_enum_path_resources_ack(raw, msg);
 case 136:
  return drm_dp_sideband_parse_allocate_payload_ack(raw, msg);
 case 133:
 case 132:
  return drm_dp_sideband_parse_power_updown_phy_ack(raw, msg);
 default:
  DRM_ERROR("Got unknown reply 0x%02x (%s)\n", msg->req_type,
     drm_dp_mst_req_type_str(msg->req_type));
  return 0;
 }
}

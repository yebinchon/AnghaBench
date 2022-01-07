
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_sideband_msg_tx {int dummy; } ;
struct drm_dp_sideband_msg_reply_body {int req_type; int reply_type; } ;


 int DP_SIDEBAND_REPLY_ACK ;
 int drm_dp_encode_sideband_reply (struct drm_dp_sideband_msg_reply_body*,struct drm_dp_sideband_msg_tx*) ;

__attribute__((used)) static int drm_dp_encode_up_ack_reply(struct drm_dp_sideband_msg_tx *msg, u8 req_type)
{
 struct drm_dp_sideband_msg_reply_body reply;

 reply.reply_type = DP_SIDEBAND_REPLY_ACK;
 reply.req_type = req_type;
 drm_dp_encode_sideband_reply(&reply, msg);
 return 0;
}

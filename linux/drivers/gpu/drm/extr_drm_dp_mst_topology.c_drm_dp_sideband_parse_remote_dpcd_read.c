
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_sideband_msg_rx {int* msg; int curlen; } ;
struct TYPE_4__ {int port_number; int num_bytes; int bytes; } ;
struct TYPE_3__ {TYPE_2__ remote_dpcd_read_ack; } ;
struct drm_dp_sideband_msg_reply_body {TYPE_1__ u; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static bool drm_dp_sideband_parse_remote_dpcd_read(struct drm_dp_sideband_msg_rx *raw,
         struct drm_dp_sideband_msg_reply_body *repmsg)
{
 int idx = 1;
 repmsg->u.remote_dpcd_read_ack.port_number = raw->msg[idx] & 0xf;
 idx++;
 if (idx > raw->curlen)
  goto fail_len;
 repmsg->u.remote_dpcd_read_ack.num_bytes = raw->msg[idx];
 idx++;
 if (idx > raw->curlen)
  goto fail_len;

 memcpy(repmsg->u.remote_dpcd_read_ack.bytes, &raw->msg[idx], repmsg->u.remote_dpcd_read_ack.num_bytes);
 return 1;
fail_len:
 DRM_DEBUG_KMS("link address reply parse length fail %d %d\n", idx, raw->curlen);
 return 0;
}

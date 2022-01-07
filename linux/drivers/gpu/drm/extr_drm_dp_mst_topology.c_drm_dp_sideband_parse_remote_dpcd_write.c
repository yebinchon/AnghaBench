
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_sideband_msg_rx {int* msg; int curlen; } ;
struct TYPE_3__ {int port_number; } ;
struct TYPE_4__ {TYPE_1__ remote_dpcd_write_ack; } ;
struct drm_dp_sideband_msg_reply_body {TYPE_2__ u; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;

__attribute__((used)) static bool drm_dp_sideband_parse_remote_dpcd_write(struct drm_dp_sideband_msg_rx *raw,
            struct drm_dp_sideband_msg_reply_body *repmsg)
{
 int idx = 1;
 repmsg->u.remote_dpcd_write_ack.port_number = raw->msg[idx] & 0xf;
 idx++;
 if (idx > raw->curlen)
  goto fail_len;
 return 1;
fail_len:
 DRM_DEBUG_KMS("parse length fail %d %d\n", idx, raw->curlen);
 return 0;
}

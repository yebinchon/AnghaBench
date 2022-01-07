
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_sideband_msg_rx {int* msg; int curlen; } ;
struct TYPE_3__ {int port_number; int available_pbn; int guid; } ;
struct TYPE_4__ {TYPE_1__ resource_stat; } ;
struct drm_dp_sideband_msg_req_body {TYPE_2__ u; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static bool drm_dp_sideband_parse_resource_status_notify(struct drm_dp_sideband_msg_rx *raw,
          struct drm_dp_sideband_msg_req_body *msg)
{
 int idx = 1;

 msg->u.resource_stat.port_number = (raw->msg[idx] & 0xf0) >> 4;
 idx++;
 if (idx > raw->curlen)
  goto fail_len;

 memcpy(msg->u.resource_stat.guid, &raw->msg[idx], 16);
 idx += 16;
 if (idx > raw->curlen)
  goto fail_len;

 msg->u.resource_stat.available_pbn = (raw->msg[idx] << 8) | (raw->msg[idx + 1]);
 idx++;
 return 1;
fail_len:
 DRM_DEBUG_KMS("resource status reply parse length fail %d %d\n", idx, raw->curlen);
 return 0;
}

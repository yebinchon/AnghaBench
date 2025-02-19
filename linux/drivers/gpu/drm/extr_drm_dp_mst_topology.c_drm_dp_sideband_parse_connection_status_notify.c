
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_dp_sideband_msg_rx {int* msg; int curlen; } ;
struct TYPE_3__ {int port_number; int legacy_device_plug_status; int displayport_device_plug_status; int message_capability_status; int input_port; int peer_device_type; int guid; } ;
struct TYPE_4__ {TYPE_1__ conn_stat; } ;
struct drm_dp_sideband_msg_req_body {TYPE_2__ u; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 int memcpy (int ,int*,int) ;

__attribute__((used)) static bool drm_dp_sideband_parse_connection_status_notify(struct drm_dp_sideband_msg_rx *raw,
          struct drm_dp_sideband_msg_req_body *msg)
{
 int idx = 1;

 msg->u.conn_stat.port_number = (raw->msg[idx] & 0xf0) >> 4;
 idx++;
 if (idx > raw->curlen)
  goto fail_len;

 memcpy(msg->u.conn_stat.guid, &raw->msg[idx], 16);
 idx += 16;
 if (idx > raw->curlen)
  goto fail_len;

 msg->u.conn_stat.legacy_device_plug_status = (raw->msg[idx] >> 6) & 0x1;
 msg->u.conn_stat.displayport_device_plug_status = (raw->msg[idx] >> 5) & 0x1;
 msg->u.conn_stat.message_capability_status = (raw->msg[idx] >> 4) & 0x1;
 msg->u.conn_stat.input_port = (raw->msg[idx] >> 3) & 0x1;
 msg->u.conn_stat.peer_device_type = (raw->msg[idx] & 0x7);
 idx++;
 return 1;
fail_len:
 DRM_DEBUG_KMS("connection status reply parse length fail %d %d\n", idx, raw->curlen);
 return 0;
}

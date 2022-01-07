
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct drm_dp_sideband_msg_tx {int dummy; } ;
struct TYPE_4__ {void** bytes; void* num_bytes; int dpcd_address; void* port_number; } ;
struct TYPE_3__ {TYPE_2__ dpcd_write; } ;
struct drm_dp_sideband_msg_req_body {TYPE_1__ u; int req_type; } ;


 int DP_REMOTE_DPCD_WRITE ;
 int drm_dp_encode_sideband_req (struct drm_dp_sideband_msg_req_body*,struct drm_dp_sideband_msg_tx*) ;

__attribute__((used)) static int build_dpcd_write(struct drm_dp_sideband_msg_tx *msg, u8 port_num, u32 offset, u8 num_bytes, u8 *bytes)
{
 struct drm_dp_sideband_msg_req_body req;

 req.req_type = DP_REMOTE_DPCD_WRITE;
 req.u.dpcd_write.port_number = port_num;
 req.u.dpcd_write.dpcd_address = offset;
 req.u.dpcd_write.num_bytes = num_bytes;
 req.u.dpcd_write.bytes = bytes;
 drm_dp_encode_sideband_req(&req, msg);

 return 0;
}

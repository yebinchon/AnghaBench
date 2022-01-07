
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef void* u8 ;
struct drm_dp_sideband_msg_tx {int path_msg; } ;
struct TYPE_3__ {int port_number; int sdp_stream_sink; void* number_sdp_streams; int pbn; void* vcpi; } ;
struct TYPE_4__ {TYPE_1__ allocate_payload; } ;
struct drm_dp_sideband_msg_req_body {TYPE_2__ u; int req_type; } ;
typedef int req ;


 int DP_ALLOCATE_PAYLOAD ;
 int drm_dp_encode_sideband_req (struct drm_dp_sideband_msg_req_body*,struct drm_dp_sideband_msg_tx*) ;
 int memcpy (int ,void**,void*) ;
 int memset (struct drm_dp_sideband_msg_req_body*,int ,int) ;

__attribute__((used)) static int build_allocate_payload(struct drm_dp_sideband_msg_tx *msg, int port_num,
      u8 vcpi, uint16_t pbn,
      u8 number_sdp_streams,
      u8 *sdp_stream_sink)
{
 struct drm_dp_sideband_msg_req_body req;
 memset(&req, 0, sizeof(req));
 req.req_type = DP_ALLOCATE_PAYLOAD;
 req.u.allocate_payload.port_number = port_num;
 req.u.allocate_payload.vcpi = vcpi;
 req.u.allocate_payload.pbn = pbn;
 req.u.allocate_payload.number_sdp_streams = number_sdp_streams;
 memcpy(req.u.allocate_payload.sdp_stream_sink, sdp_stream_sink,
     number_sdp_streams);
 drm_dp_encode_sideband_req(&req, msg);
 msg->path_msg = 1;
 return 0;
}

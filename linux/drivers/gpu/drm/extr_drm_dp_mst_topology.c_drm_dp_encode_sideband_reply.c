
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_dp_sideband_msg_tx {int* msg; int cur_len; } ;
struct drm_dp_sideband_msg_reply_body {int reply_type; int req_type; } ;



__attribute__((used)) static void drm_dp_encode_sideband_reply(struct drm_dp_sideband_msg_reply_body *rep,
      struct drm_dp_sideband_msg_tx *raw)
{
 int idx = 0;
 u8 *buf = raw->msg;

 buf[idx++] = (rep->reply_type & 0x1) << 7 | (rep->req_type & 0x7f);

 raw->cur_len = idx;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
struct drm_dp_sideband_msg_tx {int* msg; int cur_len; } ;
struct TYPE_16__ {int port_number; } ;
struct TYPE_15__ {int port_number; int write_i2c_device_id; int num_bytes; int bytes; } ;
struct TYPE_14__ {int port_number; int num_transactions; int read_i2c_device_id; int num_bytes_read; TYPE_4__* transactions; } ;
struct TYPE_12__ {int port_number; int dpcd_address; int num_bytes; int bytes; } ;
struct TYPE_11__ {int port_number; int dpcd_address; int num_bytes; } ;
struct TYPE_10__ {int port_number; int vcpi; } ;
struct TYPE_18__ {int port_number; int number_sdp_streams; int vcpi; int pbn; int* sdp_stream_sink; } ;
struct TYPE_17__ {TYPE_7__ port_num; TYPE_6__ i2c_write; TYPE_5__ i2c_read; TYPE_3__ dpcd_write; TYPE_2__ dpcd_read; TYPE_1__ query_payload; TYPE_9__ allocate_payload; } ;
struct drm_dp_sideband_msg_req_body {int req_type; TYPE_8__ u; } ;
struct TYPE_13__ {int i2c_dev_id; int num_bytes; int no_stop_bit; int i2c_transaction_delay; int bytes; } ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static void drm_dp_encode_sideband_req(struct drm_dp_sideband_msg_req_body *req,
           struct drm_dp_sideband_msg_tx *raw)
{
 int idx = 0;
 int i;
 u8 *buf = raw->msg;
 buf[idx++] = req->req_type & 0x7f;

 switch (req->req_type) {
 case 135:
  buf[idx] = (req->u.port_num.port_number & 0xf) << 4;
  idx++;
  break;
 case 136:
  buf[idx] = (req->u.allocate_payload.port_number & 0xf) << 4 |
   (req->u.allocate_payload.number_sdp_streams & 0xf);
  idx++;
  buf[idx] = (req->u.allocate_payload.vcpi & 0x7f);
  idx++;
  buf[idx] = (req->u.allocate_payload.pbn >> 8);
  idx++;
  buf[idx] = (req->u.allocate_payload.pbn & 0xff);
  idx++;
  for (i = 0; i < req->u.allocate_payload.number_sdp_streams / 2; i++) {
   buf[idx] = ((req->u.allocate_payload.sdp_stream_sink[i * 2] & 0xf) << 4) |
    (req->u.allocate_payload.sdp_stream_sink[i * 2 + 1] & 0xf);
   idx++;
  }
  if (req->u.allocate_payload.number_sdp_streams & 1) {
   i = req->u.allocate_payload.number_sdp_streams - 1;
   buf[idx] = (req->u.allocate_payload.sdp_stream_sink[i] & 0xf) << 4;
   idx++;
  }
  break;
 case 132:
  buf[idx] = (req->u.query_payload.port_number & 0xf) << 4;
  idx++;
  buf[idx] = (req->u.query_payload.vcpi & 0x7f);
  idx++;
  break;
 case 131:
  buf[idx] = (req->u.dpcd_read.port_number & 0xf) << 4;
  buf[idx] |= ((req->u.dpcd_read.dpcd_address & 0xf0000) >> 16) & 0xf;
  idx++;
  buf[idx] = (req->u.dpcd_read.dpcd_address & 0xff00) >> 8;
  idx++;
  buf[idx] = (req->u.dpcd_read.dpcd_address & 0xff);
  idx++;
  buf[idx] = (req->u.dpcd_read.num_bytes);
  idx++;
  break;

 case 130:
  buf[idx] = (req->u.dpcd_write.port_number & 0xf) << 4;
  buf[idx] |= ((req->u.dpcd_write.dpcd_address & 0xf0000) >> 16) & 0xf;
  idx++;
  buf[idx] = (req->u.dpcd_write.dpcd_address & 0xff00) >> 8;
  idx++;
  buf[idx] = (req->u.dpcd_write.dpcd_address & 0xff);
  idx++;
  buf[idx] = (req->u.dpcd_write.num_bytes);
  idx++;
  memcpy(&buf[idx], req->u.dpcd_write.bytes, req->u.dpcd_write.num_bytes);
  idx += req->u.dpcd_write.num_bytes;
  break;
 case 129:
  buf[idx] = (req->u.i2c_read.port_number & 0xf) << 4;
  buf[idx] |= (req->u.i2c_read.num_transactions & 0x3);
  idx++;
  for (i = 0; i < (req->u.i2c_read.num_transactions & 0x3); i++) {
   buf[idx] = req->u.i2c_read.transactions[i].i2c_dev_id & 0x7f;
   idx++;
   buf[idx] = req->u.i2c_read.transactions[i].num_bytes;
   idx++;
   memcpy(&buf[idx], req->u.i2c_read.transactions[i].bytes, req->u.i2c_read.transactions[i].num_bytes);
   idx += req->u.i2c_read.transactions[i].num_bytes;

   buf[idx] = (req->u.i2c_read.transactions[i].no_stop_bit & 0x1) << 5;
   buf[idx] |= (req->u.i2c_read.transactions[i].i2c_transaction_delay & 0xf);
   idx++;
  }
  buf[idx] = (req->u.i2c_read.read_i2c_device_id) & 0x7f;
  idx++;
  buf[idx] = (req->u.i2c_read.num_bytes_read);
  idx++;
  break;

 case 128:
  buf[idx] = (req->u.i2c_write.port_number & 0xf) << 4;
  idx++;
  buf[idx] = (req->u.i2c_write.write_i2c_device_id) & 0x7f;
  idx++;
  buf[idx] = (req->u.i2c_write.num_bytes);
  idx++;
  memcpy(&buf[idx], req->u.i2c_write.bytes, req->u.i2c_write.num_bytes);
  idx += req->u.i2c_write.num_bytes;
  break;

 case 134:
 case 133:
  buf[idx] = (req->u.port_num.port_number & 0xf) << 4;
  idx++;
  break;
 }
 raw->cur_len = idx;
}

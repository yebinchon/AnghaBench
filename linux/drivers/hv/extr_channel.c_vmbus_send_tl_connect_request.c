
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msgtype; } ;
struct vmbus_channel_tl_connect_request {int host_service_id; int guest_endpoint_id; TYPE_1__ header; } ;
typedef int guid_t ;
typedef int conn_msg ;


 int CHANNELMSG_TL_CONNECT_REQUEST ;
 int memset (struct vmbus_channel_tl_connect_request*,int ,int) ;
 int trace_vmbus_send_tl_connect_request (struct vmbus_channel_tl_connect_request*,int) ;
 int vmbus_post_msg (struct vmbus_channel_tl_connect_request*,int,int) ;

int vmbus_send_tl_connect_request(const guid_t *shv_guest_servie_id,
      const guid_t *shv_host_servie_id)
{
 struct vmbus_channel_tl_connect_request conn_msg;
 int ret;

 memset(&conn_msg, 0, sizeof(conn_msg));
 conn_msg.header.msgtype = CHANNELMSG_TL_CONNECT_REQUEST;
 conn_msg.guest_endpoint_id = *shv_guest_servie_id;
 conn_msg.host_service_id = *shv_host_servie_id;

 ret = vmbus_post_msg(&conn_msg, sizeof(conn_msg), 1);

 trace_vmbus_send_tl_connect_request(&conn_msg, ret);

 return ret;
}

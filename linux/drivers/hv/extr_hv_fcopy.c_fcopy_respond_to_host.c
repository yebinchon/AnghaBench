
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int * onchannel_callback; } ;
struct icmsg_hdr {int status; int icflags; } ;
struct TYPE_2__ {int recv_req_id; struct vmbus_channel* recv_channel; int recv_len; } ;


 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 int VM_PKT_DATA_INBAND ;
 TYPE_1__ fcopy_transaction ;
 int * recv_buffer ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
fcopy_respond_to_host(int error)
{
 struct icmsg_hdr *icmsghdr;
 u32 buf_len;
 struct vmbus_channel *channel;
 u64 req_id;
 buf_len = fcopy_transaction.recv_len;
 channel = fcopy_transaction.recv_channel;
 req_id = fcopy_transaction.recv_req_id;

 icmsghdr = (struct icmsg_hdr *)
   &recv_buffer[sizeof(struct vmbuspipe_hdr)];

 if (channel->onchannel_callback == ((void*)0))




  return;

 icmsghdr->status = error;
 icmsghdr->icflags = ICMSGHDRFLAG_TRANSACTION | ICMSGHDRFLAG_RESPONSE;
 vmbus_sendpacket(channel, recv_buffer, buf_len, req_id,
    VM_PKT_DATA_INBAND, 0);
}

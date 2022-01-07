
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct icmsg_hdr {scalar_t__ icmsgtype; int icflags; } ;
struct heartbeat_msg_data {int seq_num; } ;
struct TYPE_2__ {int * recv_buffer; } ;


 int FW_VER_COUNT ;
 int HB_VER_COUNT ;
 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int fw_versions ;
 int hb_srv_version ;
 int hb_versions ;
 int pr_info (char*,int,int) ;
 TYPE_1__ util_heartbeat ;
 scalar_t__ vmbus_prep_negotiate_resp (struct icmsg_hdr*,int *,int ,int ,int ,int ,int *,int*) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int ,int *,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void heartbeat_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;
 struct icmsg_hdr *icmsghdrp;
 struct heartbeat_msg_data *heartbeat_msg;
 u8 *hbeat_txf_buf = util_heartbeat.recv_buffer;

 while (1) {

  vmbus_recvpacket(channel, hbeat_txf_buf,
     PAGE_SIZE, &recvlen, &requestid);

  if (!recvlen)
   break;

  icmsghdrp = (struct icmsg_hdr *)&hbeat_txf_buf[
    sizeof(struct vmbuspipe_hdr)];

  if (icmsghdrp->icmsgtype == ICMSGTYPE_NEGOTIATE) {
   if (vmbus_prep_negotiate_resp(icmsghdrp,
     hbeat_txf_buf,
     fw_versions, FW_VER_COUNT,
     hb_versions, HB_VER_COUNT,
     ((void*)0), &hb_srv_version)) {

    pr_info("Heartbeat IC version %d.%d\n",
     hb_srv_version >> 16,
     hb_srv_version & 0xFFFF);
   }
  } else {
   heartbeat_msg =
    (struct heartbeat_msg_data *)&hbeat_txf_buf[
     sizeof(struct vmbuspipe_hdr) +
     sizeof(struct icmsg_hdr)];

   heartbeat_msg->seq_num += 1;
  }

  icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION
   | ICMSGHDRFLAG_RESPONSE;

  vmbus_sendpacket(channel, hbeat_txf_buf,
           recvlen, requestid,
           VM_PKT_DATA_INBAND, 0);
 }
}

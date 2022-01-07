
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct icmsg_hdr {scalar_t__ icmsgtype; int icflags; } ;
struct hv_vss_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; struct hv_vss_msg* msg; int recv_req_id; scalar_t__ recv_len; } ;


 int FW_VER_COUNT ;
 scalar_t__ HVUTIL_READY ;
 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int VSS_VER_COUNT ;
 int fw_versions ;
 int pr_info (char*,int,int) ;
 int * recv_buffer ;
 int schedule_work (int *) ;
 scalar_t__ vmbus_prep_negotiate_resp (struct icmsg_hdr*,int *,int ,int ,int ,int ,int *,int*) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int,scalar_t__*,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,scalar_t__,int ,int ,int ) ;
 int vss_handle_request_work ;
 TYPE_1__ vss_transaction ;
 int vss_versions ;

void hv_vss_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;
 struct hv_vss_msg *vss_msg;
 int vss_srv_version;

 struct icmsg_hdr *icmsghdrp;

 if (vss_transaction.state > HVUTIL_READY)
  return;

 vmbus_recvpacket(channel, recv_buffer, PAGE_SIZE * 2, &recvlen,
    &requestid);

 if (recvlen > 0) {
  icmsghdrp = (struct icmsg_hdr *)&recv_buffer[
   sizeof(struct vmbuspipe_hdr)];

  if (icmsghdrp->icmsgtype == ICMSGTYPE_NEGOTIATE) {
   if (vmbus_prep_negotiate_resp(icmsghdrp,
     recv_buffer, fw_versions, FW_VER_COUNT,
     vss_versions, VSS_VER_COUNT,
     ((void*)0), &vss_srv_version)) {

    pr_info("VSS IC version %d.%d\n",
     vss_srv_version >> 16,
     vss_srv_version & 0xFFFF);
   }
  } else {
   vss_msg = (struct hv_vss_msg *)&recv_buffer[
    sizeof(struct vmbuspipe_hdr) +
    sizeof(struct icmsg_hdr)];






   vss_transaction.recv_len = recvlen;
   vss_transaction.recv_req_id = requestid;
   vss_transaction.msg = (struct hv_vss_msg *)vss_msg;

   schedule_work(&vss_handle_request_work);
   return;
  }

  icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION
   | ICMSGHDRFLAG_RESPONSE;

  vmbus_sendpacket(channel, recv_buffer,
           recvlen, requestid,
           VM_PKT_DATA_INBAND, 0);
 }

}

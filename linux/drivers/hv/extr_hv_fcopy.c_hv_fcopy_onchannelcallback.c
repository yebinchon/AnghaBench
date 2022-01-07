
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
struct hv_fcopy_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; struct hv_fcopy_hdr* fcopy_msg; int recv_req_id; scalar_t__ recv_len; } ;


 int FCOPY_VER_COUNT ;
 int FW_VER_COUNT ;
 scalar_t__ HVUTIL_HOSTMSG_RECEIVED ;
 scalar_t__ HVUTIL_READY ;
 int HV_E_FAIL ;
 int HV_UTIL_TIMEOUT ;
 int HZ ;
 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int fcopy_respond_to_host (int ) ;
 int fcopy_send_work ;
 int fcopy_timeout_work ;
 TYPE_1__ fcopy_transaction ;
 int fcopy_versions ;
 int fw_versions ;
 int pr_info (char*,int,int) ;
 int * recv_buffer ;
 int schedule_delayed_work (int *,int) ;
 int schedule_work (int *) ;
 scalar_t__ vmbus_prep_negotiate_resp (struct icmsg_hdr*,int *,int ,int ,int ,int ,int *,int*) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int,scalar_t__*,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,scalar_t__,int ,int ,int ) ;

void hv_fcopy_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;
 struct hv_fcopy_hdr *fcopy_msg;
 struct icmsg_hdr *icmsghdr;
 int fcopy_srv_version;

 if (fcopy_transaction.state > HVUTIL_READY)
  return;

 vmbus_recvpacket(channel, recv_buffer, PAGE_SIZE * 2, &recvlen,
    &requestid);
 if (recvlen <= 0)
  return;

 icmsghdr = (struct icmsg_hdr *)&recv_buffer[
   sizeof(struct vmbuspipe_hdr)];
 if (icmsghdr->icmsgtype == ICMSGTYPE_NEGOTIATE) {
  if (vmbus_prep_negotiate_resp(icmsghdr, recv_buffer,
    fw_versions, FW_VER_COUNT,
    fcopy_versions, FCOPY_VER_COUNT,
    ((void*)0), &fcopy_srv_version)) {

   pr_info("FCopy IC version %d.%d\n",
    fcopy_srv_version >> 16,
    fcopy_srv_version & 0xFFFF);
  }
 } else {
  fcopy_msg = (struct hv_fcopy_hdr *)&recv_buffer[
    sizeof(struct vmbuspipe_hdr) +
    sizeof(struct icmsg_hdr)];






  fcopy_transaction.recv_len = recvlen;
  fcopy_transaction.recv_req_id = requestid;
  fcopy_transaction.fcopy_msg = fcopy_msg;

  if (fcopy_transaction.state < HVUTIL_READY) {

   fcopy_respond_to_host(HV_E_FAIL);
   return;
  }
  fcopy_transaction.state = HVUTIL_HOSTMSG_RECEIVED;




  schedule_work(&fcopy_send_work);
  schedule_delayed_work(&fcopy_timeout_work,
          HV_UTIL_TIMEOUT * HZ);
  return;
 }
 icmsghdr->icflags = ICMSGHDRFLAG_TRANSACTION | ICMSGHDRFLAG_RESPONSE;
 vmbus_sendpacket(channel, recv_buffer, recvlen, requestid,
   VM_PKT_DATA_INBAND, 0);
}

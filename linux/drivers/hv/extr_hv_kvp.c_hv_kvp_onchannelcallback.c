
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
struct hv_kvp_msg {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; int recv_channel; struct hv_kvp_msg* kvp_msg; int recv_req_id; scalar_t__ recv_len; } ;


 int FW_VER_COUNT ;
 scalar_t__ HVUTIL_HOSTMSG_RECEIVED ;
 scalar_t__ HVUTIL_READY ;
 int HV_E_FAIL ;
 int HV_UTIL_NEGO_TIMEOUT ;
 int HV_UTIL_TIMEOUT ;
 int HZ ;
 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int KVP_VER_COUNT ;
 int PAGE_SIZE ;
 int VM_PKT_DATA_INBAND ;
 int fw_versions ;
 int hv_poll_channel (int ,int ) ;
 int kvp_host_handshake_work ;
 int kvp_poll_wrapper ;
 int kvp_respond_to_host (int *,int ) ;
 int kvp_sendkey_work ;
 int kvp_timeout_work ;
 TYPE_1__ kvp_transaction ;
 int kvp_versions ;
 int pr_info (char*,int,int) ;
 int * recv_buffer ;
 int schedule_delayed_work (int *,int) ;
 int schedule_work (int *) ;
 scalar_t__ vmbus_prep_negotiate_resp (struct icmsg_hdr*,int *,int ,int ,int ,int ,int *,int*) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int,scalar_t__*,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,scalar_t__,int ,int ,int ) ;

void hv_kvp_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;

 struct hv_kvp_msg *kvp_msg;

 struct icmsg_hdr *icmsghdrp;
 int kvp_srv_version;
 static enum {NEGO_NOT_STARTED,
       NEGO_IN_PROGRESS,
       NEGO_FINISHED} host_negotiatied = NEGO_NOT_STARTED;

 if (kvp_transaction.state < HVUTIL_READY) {





  if (host_negotiatied == NEGO_NOT_STARTED) {
   host_negotiatied = NEGO_IN_PROGRESS;
   schedule_delayed_work(&kvp_host_handshake_work,
          HV_UTIL_NEGO_TIMEOUT * HZ);
  }
  return;
 }
 if (kvp_transaction.state > HVUTIL_READY)
  return;

 vmbus_recvpacket(channel, recv_buffer, PAGE_SIZE * 4, &recvlen,
    &requestid);

 if (recvlen > 0) {
  icmsghdrp = (struct icmsg_hdr *)&recv_buffer[
   sizeof(struct vmbuspipe_hdr)];

  if (icmsghdrp->icmsgtype == ICMSGTYPE_NEGOTIATE) {
   if (vmbus_prep_negotiate_resp(icmsghdrp,
     recv_buffer, fw_versions, FW_VER_COUNT,
     kvp_versions, KVP_VER_COUNT,
     ((void*)0), &kvp_srv_version)) {
    pr_info("KVP IC version %d.%d\n",
     kvp_srv_version >> 16,
     kvp_srv_version & 0xFFFF);
   }
  } else {
   kvp_msg = (struct hv_kvp_msg *)&recv_buffer[
    sizeof(struct vmbuspipe_hdr) +
    sizeof(struct icmsg_hdr)];






   kvp_transaction.recv_len = recvlen;
   kvp_transaction.recv_req_id = requestid;
   kvp_transaction.kvp_msg = kvp_msg;

   if (kvp_transaction.state < HVUTIL_READY) {

    kvp_respond_to_host(((void*)0), HV_E_FAIL);
    return;
   }
   kvp_transaction.state = HVUTIL_HOSTMSG_RECEIVED;
   schedule_work(&kvp_sendkey_work);
   schedule_delayed_work(&kvp_timeout_work,
           HV_UTIL_TIMEOUT * HZ);

   return;

  }

  icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION
   | ICMSGHDRFLAG_RESPONSE;

  vmbus_sendpacket(channel, recv_buffer,
           recvlen, requestid,
           VM_PKT_DATA_INBAND, 0);

  host_negotiatied = NEGO_FINISHED;
  hv_poll_channel(kvp_transaction.recv_channel, kvp_poll_wrapper);
 }

}

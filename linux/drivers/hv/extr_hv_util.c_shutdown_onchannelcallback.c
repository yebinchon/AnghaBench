
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct vmbuspipe_hdr {int dummy; } ;
struct vmbus_channel {int dummy; } ;
struct shutdown_msg_data {int flags; } ;
struct icmsg_hdr {scalar_t__ icmsgtype; int icflags; int status; } ;
struct TYPE_2__ {int * recv_buffer; } ;


 int FW_VER_COUNT ;
 int HV_E_FAIL ;
 int HV_S_OK ;
 int ICMSGHDRFLAG_RESPONSE ;
 int ICMSGHDRFLAG_TRANSACTION ;
 scalar_t__ ICMSGTYPE_NEGOTIATE ;
 int PAGE_SIZE ;
 int SD_VER_COUNT ;
 int VM_PKT_DATA_INBAND ;
 int fw_versions ;
 int pr_info (char*,...) ;
 int schedule_work (int *) ;
 int sd_srv_version ;
 int sd_versions ;
 int shutdown_work ;
 TYPE_1__ util_shutdown ;
 scalar_t__ vmbus_prep_negotiate_resp (struct icmsg_hdr*,int *,int ,int ,int ,int ,int *,int*) ;
 int vmbus_recvpacket (struct vmbus_channel*,int *,int ,scalar_t__*,int *) ;
 int vmbus_sendpacket (struct vmbus_channel*,int *,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void shutdown_onchannelcallback(void *context)
{
 struct vmbus_channel *channel = context;
 u32 recvlen;
 u64 requestid;
 bool execute_shutdown = 0;
 u8 *shut_txf_buf = util_shutdown.recv_buffer;

 struct shutdown_msg_data *shutdown_msg;

 struct icmsg_hdr *icmsghdrp;

 vmbus_recvpacket(channel, shut_txf_buf,
    PAGE_SIZE, &recvlen, &requestid);

 if (recvlen > 0) {
  icmsghdrp = (struct icmsg_hdr *)&shut_txf_buf[
   sizeof(struct vmbuspipe_hdr)];

  if (icmsghdrp->icmsgtype == ICMSGTYPE_NEGOTIATE) {
   if (vmbus_prep_negotiate_resp(icmsghdrp, shut_txf_buf,
     fw_versions, FW_VER_COUNT,
     sd_versions, SD_VER_COUNT,
     ((void*)0), &sd_srv_version)) {
    pr_info("Shutdown IC version %d.%d\n",
     sd_srv_version >> 16,
     sd_srv_version & 0xFFFF);
   }
  } else {
   shutdown_msg =
    (struct shutdown_msg_data *)&shut_txf_buf[
     sizeof(struct vmbuspipe_hdr) +
     sizeof(struct icmsg_hdr)];

   switch (shutdown_msg->flags) {
   case 0:
   case 1:
    icmsghdrp->status = HV_S_OK;
    execute_shutdown = 1;

    pr_info("Shutdown request received -"
         " graceful shutdown initiated\n");
    break;
   default:
    icmsghdrp->status = HV_E_FAIL;
    execute_shutdown = 0;

    pr_info("Shutdown request received -"
         " Invalid request\n");
    break;
   }
  }

  icmsghdrp->icflags = ICMSGHDRFLAG_TRANSACTION
   | ICMSGHDRFLAG_RESPONSE;

  vmbus_sendpacket(channel, shut_txf_buf,
           recvlen, requestid,
           VM_PKT_DATA_INBAND, 0);
 }

 if (execute_shutdown == 1)
  schedule_work(&shutdown_work);
}

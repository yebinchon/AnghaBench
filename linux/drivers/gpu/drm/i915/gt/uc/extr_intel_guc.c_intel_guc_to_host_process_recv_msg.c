
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_guc {int const msg_enabled_mask; int log; } ;


 int EPROTO ;
 int INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED ;
 int INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER ;
 int intel_guc_log_handle_flush_event (int *) ;
 scalar_t__ unlikely (int) ;

int intel_guc_to_host_process_recv_msg(struct intel_guc *guc,
           const u32 *payload, u32 len)
{
 u32 msg;

 if (unlikely(!len))
  return -EPROTO;


 msg = payload[0] & guc->msg_enabled_mask;

 if (msg & (INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER |
     INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED))
  intel_guc_log_handle_flush_event(&guc->log);

 return 0;
}

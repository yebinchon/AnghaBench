
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_log {int dummy; } ;


 int INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED ;
 int INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER ;
 int intel_guc_disable_msg (int ,int) ;
 int log_to_guc (struct intel_guc_log*) ;

__attribute__((used)) static void guc_log_disable_flush_events(struct intel_guc_log *log)
{
 intel_guc_disable_msg(log_to_guc(log),
         INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER |
         INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED);
}

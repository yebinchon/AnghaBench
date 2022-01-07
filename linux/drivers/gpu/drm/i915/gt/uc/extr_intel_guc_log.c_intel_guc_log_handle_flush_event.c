
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flush_work; } ;
struct intel_guc_log {TYPE_1__ relay; } ;


 int queue_work (int ,int *) ;
 int system_highpri_wq ;

void intel_guc_log_handle_flush_event(struct intel_guc_log *log)
{
 queue_work(system_highpri_wq, &log->relay.flush_work);
}

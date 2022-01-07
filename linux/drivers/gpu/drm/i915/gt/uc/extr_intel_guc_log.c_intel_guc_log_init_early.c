
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flush_work; int lock; } ;
struct intel_guc_log {TYPE_1__ relay; } ;


 int INIT_WORK (int *,int ) ;
 int capture_logs_work ;
 int mutex_init (int *) ;

void intel_guc_log_init_early(struct intel_guc_log *log)
{
 mutex_init(&log->relay.lock);
 INIT_WORK(&log->relay.flush_work, capture_logs_work);
}

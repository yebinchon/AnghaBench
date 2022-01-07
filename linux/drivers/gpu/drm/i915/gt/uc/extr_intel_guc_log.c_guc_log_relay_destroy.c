
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * channel; int lock; } ;
struct intel_guc_log {TYPE_1__ relay; } ;


 int lockdep_assert_held (int *) ;
 int relay_close (int *) ;

__attribute__((used)) static void guc_log_relay_destroy(struct intel_guc_log *log)
{
 lockdep_assert_held(&log->relay.lock);

 relay_close(log->relay.channel);
 log->relay.channel = ((void*)0);
}

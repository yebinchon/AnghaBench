
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int conn_state; } ;


 int DISCONNECTED ;
 int hv_stimer_cleanup (int) ;
 int hv_synic_cleanup (int) ;
 int hyperv_cleanup () ;
 int smp_processor_id () ;
 TYPE_1__ vmbus_connection ;
 int vmbus_initiate_unload (int) ;

__attribute__((used)) static void hv_crash_handler(struct pt_regs *regs)
{
 int cpu;

 vmbus_initiate_unload(1);





 vmbus_connection.conn_state = DISCONNECTED;
 cpu = smp_processor_id();
 hv_stimer_cleanup(cpu);
 hv_synic_cleanup(cpu);
 hyperv_cleanup();
}

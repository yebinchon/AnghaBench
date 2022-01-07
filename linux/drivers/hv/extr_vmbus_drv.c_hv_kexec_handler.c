
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int conn_state; } ;


 int DISCONNECTED ;
 int cpuhp_remove_state (int ) ;
 int hv_stimer_global_cleanup () ;
 int hyperv_cleanup () ;
 int hyperv_cpuhp_online ;
 int mb () ;
 TYPE_1__ vmbus_connection ;
 int vmbus_initiate_unload (int) ;

__attribute__((used)) static void hv_kexec_handler(void)
{
 hv_stimer_global_cleanup();
 vmbus_initiate_unload(0);
 vmbus_connection.conn_state = DISCONNECTED;

 mb();
 cpuhp_remove_state(hyperv_cpuhp_online);
 hyperv_cleanup();
}

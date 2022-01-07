
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdei_registered_event {int dummy; } ;
struct sdei_crosscall_args {TYPE_1__* event; } ;
struct TYPE_2__ {int event_num; int private_registered; } ;


 int WARN_ON (int ) ;
 struct sdei_registered_event* per_cpu_ptr (int ,int ) ;
 int preemptible () ;
 int sdei_api_event_register (int ,int ,struct sdei_registered_event*,int ,int ) ;
 int sdei_cross_call_return (struct sdei_crosscall_args*,int) ;
 int sdei_entry_point ;
 int smp_processor_id () ;

__attribute__((used)) static void _local_event_register(void *data)
{
 int err;
 struct sdei_registered_event *reg;
 struct sdei_crosscall_args *arg = data;

 WARN_ON(preemptible());

 reg = per_cpu_ptr(arg->event->private_registered, smp_processor_id());
 err = sdei_api_event_register(arg->event->event_num, sdei_entry_point,
          reg, 0, 0);

 sdei_cross_call_return(arg, err);
}

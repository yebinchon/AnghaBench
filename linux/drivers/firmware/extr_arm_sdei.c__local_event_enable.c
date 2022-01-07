
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdei_crosscall_args {TYPE_1__* event; } ;
struct TYPE_2__ {int event_num; } ;


 int WARN_ON_ONCE (int ) ;
 int preemptible () ;
 int sdei_api_event_enable (int ) ;
 int sdei_cross_call_return (struct sdei_crosscall_args*,int) ;

__attribute__((used)) static void _local_event_enable(void *data)
{
 int err;
 struct sdei_crosscall_args *arg = data;

 WARN_ON_ONCE(preemptible());

 err = sdei_api_event_enable(arg->event->event_num);

 sdei_cross_call_return(arg, err);
}

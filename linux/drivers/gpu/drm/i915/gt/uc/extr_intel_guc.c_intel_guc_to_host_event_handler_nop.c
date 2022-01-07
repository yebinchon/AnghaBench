
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int dummy; } ;


 int WARN (int,char*) ;

void intel_guc_to_host_event_handler_nop(struct intel_guc *guc)
{
 WARN(1, "Unexpected event: no suitable handler\n");
}

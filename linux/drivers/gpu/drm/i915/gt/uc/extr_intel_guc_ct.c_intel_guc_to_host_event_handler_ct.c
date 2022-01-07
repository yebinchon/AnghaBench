
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc_ct {int dummy; } ;
struct intel_guc {struct intel_guc_ct ct; } ;


 int ct_process_host_channel (struct intel_guc_ct*) ;

void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
{
 struct intel_guc_ct *ct = &guc->ct;

 ct_process_host_channel(ct);
}

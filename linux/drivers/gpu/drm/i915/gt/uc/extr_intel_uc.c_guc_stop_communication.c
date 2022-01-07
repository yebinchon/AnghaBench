
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int handler; int send; int ct; } ;


 int guc_clear_mmio_msg (struct intel_guc*) ;
 int intel_guc_ct_stop (int *) ;
 int intel_guc_send_nop ;
 int intel_guc_to_host_event_handler_nop ;

__attribute__((used)) static void guc_stop_communication(struct intel_guc *guc)
{
 intel_guc_ct_stop(&guc->ct);

 guc->send = intel_guc_send_nop;
 guc->handler = intel_guc_to_host_event_handler_nop;

 guc_clear_mmio_msg(guc);
}

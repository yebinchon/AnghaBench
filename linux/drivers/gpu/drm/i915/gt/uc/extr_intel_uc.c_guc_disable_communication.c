
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_guc {int ct; int handler; int send; } ;


 int DRM_INFO (char*) ;
 int guc_clear_mmio_msg (struct intel_guc*) ;
 int guc_disable_interrupts (struct intel_guc*) ;
 int guc_get_mmio_msg (struct intel_guc*) ;
 int intel_guc_ct_disable (int *) ;
 int intel_guc_send_nop ;
 int intel_guc_to_host_event_handler_nop ;

__attribute__((used)) static void guc_disable_communication(struct intel_guc *guc)
{





 guc_clear_mmio_msg(guc);

 guc_disable_interrupts(guc);

 guc->send = intel_guc_send_nop;
 guc->handler = intel_guc_to_host_event_handler_nop;

 intel_guc_ct_disable(&guc->ct);







 guc_get_mmio_msg(guc);

 DRM_INFO("GuC communication disabled\n");
}

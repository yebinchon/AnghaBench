
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_guc {int dummy; } ;


 int GUC_INTR_GUC2HOST ;
 int intel_guc_to_host_event_handler (struct intel_guc*) ;

__attribute__((used)) static void guc_irq_handler(struct intel_guc *guc, u16 iir)
{
 if (iir & GUC_INTR_GUC2HOST)
  intel_guc_to_host_event_handler(guc);
}

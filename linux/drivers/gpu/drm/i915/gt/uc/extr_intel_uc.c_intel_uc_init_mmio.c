
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uc {int guc; } ;


 int intel_guc_init_send_regs (int *) ;

void intel_uc_init_mmio(struct intel_uc *uc)
{
 intel_guc_init_send_regs(&uc->guc);
}

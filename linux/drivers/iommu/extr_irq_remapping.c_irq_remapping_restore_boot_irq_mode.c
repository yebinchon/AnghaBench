
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int X86_FEATURE_APIC ;
 scalar_t__ apic_from_smp_config () ;
 scalar_t__ boot_cpu_has (int ) ;
 int disconnect_bsp_APIC (int ) ;

__attribute__((used)) static void irq_remapping_restore_boot_irq_mode(void)
{







 if (boot_cpu_has(X86_FEATURE_APIC) || apic_from_smp_config())
  disconnect_bsp_APIC(0);
}

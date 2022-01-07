
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPUHP_AP_IRQ_BCM2836_STARTING ;
 int bcm2836_arm_irqchip_send_ipi ;
 int bcm2836_cpu_dying ;
 int bcm2836_cpu_starting ;
 int cpuhp_setup_state (int ,char*,int ,int ) ;
 int set_smp_cross_call (int ) ;

__attribute__((used)) static void
bcm2836_arm_irqchip_smp_init(void)
{
}

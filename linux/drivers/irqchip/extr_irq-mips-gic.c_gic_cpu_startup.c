
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIC_VX_CTL_EIC ;
 int change_gic_vl_ctl (int ,int ) ;
 scalar_t__ cpu_has_veic ;
 int irq_cpu_online () ;
 int write_gic_vl_rmask (int ) ;

__attribute__((used)) static int gic_cpu_startup(unsigned int cpu)
{

 change_gic_vl_ctl(GIC_VX_CTL_EIC,
     cpu_has_veic ? GIC_VX_CTL_EIC : 0);


 write_gic_vl_rmask(~0);


 irq_cpu_online();

 return 0;
}

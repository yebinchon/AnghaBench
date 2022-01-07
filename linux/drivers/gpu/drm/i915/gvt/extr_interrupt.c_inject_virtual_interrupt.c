
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int intel_gvt_hypervisor_inject_msi (struct intel_vgpu*) ;

__attribute__((used)) static int inject_virtual_interrupt(struct intel_vgpu *vgpu)
{
 return intel_gvt_hypervisor_inject_msi(vgpu);
}

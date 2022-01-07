
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct intel_vgpu {int dummy; } ;


 int PCI_BASE_ADDRESS_0 ;
 int intel_vgpu_get_bar_gpa (struct intel_vgpu*,int ) ;

int intel_vgpu_gpa_to_mmio_offset(struct intel_vgpu *vgpu, u64 gpa)
{
 u64 gttmmio_gpa = intel_vgpu_get_bar_gpa(vgpu, PCI_BASE_ADDRESS_0);
 return gpa - gttmmio_gpa;
}

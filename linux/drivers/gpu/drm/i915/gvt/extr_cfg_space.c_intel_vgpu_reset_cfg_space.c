
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_vgpu {int dummy; } ;


 scalar_t__ INTEL_GVT_PCI_CLASS_VGA_OTHER ;
 size_t PCI_CLASS_DEVICE ;
 size_t PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int intel_vgpu_init_cfg_space (struct intel_vgpu*,int) ;
 int map_aperture (struct intel_vgpu*,int) ;
 int trap_gttmmio (struct intel_vgpu*,int) ;
 scalar_t__* vgpu_cfg_space (struct intel_vgpu*) ;

void intel_vgpu_reset_cfg_space(struct intel_vgpu *vgpu)
{
 u8 cmd = vgpu_cfg_space(vgpu)[PCI_COMMAND];
 bool primary = vgpu_cfg_space(vgpu)[PCI_CLASS_DEVICE] !=
    INTEL_GVT_PCI_CLASS_VGA_OTHER;

 if (cmd & PCI_COMMAND_MEMORY) {
  trap_gttmmio(vgpu, 0);
  map_aperture(vgpu, 0);
 }






 intel_vgpu_init_cfg_space(vgpu, primary);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_vgpu {int dummy; } ;


 int PCI_COMMAND_MEMORY ;
 int map_aperture (struct intel_vgpu*,int) ;
 int trap_gttmmio (struct intel_vgpu*,int) ;
 int* vgpu_cfg_space (struct intel_vgpu*) ;
 int vgpu_pci_cfg_mem_write (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int emulate_pci_command_write(struct intel_vgpu *vgpu,
 unsigned int offset, void *p_data, unsigned int bytes)
{
 u8 old = vgpu_cfg_space(vgpu)[offset];
 u8 new = *(u8 *)p_data;
 u8 changed = old ^ new;
 int ret;

 vgpu_pci_cfg_mem_write(vgpu, offset, p_data, bytes);
 if (!(changed & PCI_COMMAND_MEMORY))
  return 0;

 if (old & PCI_COMMAND_MEMORY) {
  ret = trap_gttmmio(vgpu, 0);
  if (ret)
   return ret;
  ret = map_aperture(vgpu, 0);
  if (ret)
   return ret;
 } else {
  ret = trap_gttmmio(vgpu, 1);
  if (ret)
   return ret;
  ret = map_aperture(vgpu, 1);
  if (ret)
   return ret;
 }

 return 0;
}

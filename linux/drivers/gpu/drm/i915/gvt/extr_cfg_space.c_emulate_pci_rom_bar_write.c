
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_vgpu {int dummy; } ;


 int PCI_ROM_ADDRESS_MASK ;
 scalar_t__ vgpu_cfg_space (struct intel_vgpu*) ;
 int vgpu_pci_cfg_mem_write (struct intel_vgpu*,unsigned int,void*,unsigned int) ;

__attribute__((used)) static int emulate_pci_rom_bar_write(struct intel_vgpu *vgpu,
 unsigned int offset, void *p_data, unsigned int bytes)
{
 u32 *pval = (u32 *)(vgpu_cfg_space(vgpu) + offset);
 u32 new = *(u32 *)(p_data);

 if ((new & PCI_ROM_ADDRESS_MASK) == PCI_ROM_ADDRESS_MASK)

  *pval = 0;
 else
  vgpu_pci_cfg_mem_write(vgpu, offset, p_data, bytes);
 return 0;
}

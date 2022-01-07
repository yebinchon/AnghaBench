
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_vgpu_pci_bar {int size; } ;
struct TYPE_2__ {struct intel_vgpu_pci_bar* bar; } ;
struct intel_vgpu {TYPE_1__ cfg_space; } ;


 size_t INTEL_GVT_PCI_BAR_APERTURE ;
 size_t INTEL_GVT_PCI_BAR_GTTMMIO ;
 int IS_ALIGNED (unsigned int,int) ;




 size_t PCI_COMMAND ;
 int PCI_COMMAND_MEMORY ;
 int intel_vgpu_write_pci_bar (struct intel_vgpu*,unsigned int,int,int) ;
 int map_aperture (struct intel_vgpu*,int) ;
 int trap_gttmmio (struct intel_vgpu*,int) ;
 int* vgpu_cfg_space (struct intel_vgpu*) ;

__attribute__((used)) static int emulate_pci_bar_write(struct intel_vgpu *vgpu, unsigned int offset,
 void *p_data, unsigned int bytes)
{
 u32 new = *(u32 *)(p_data);
 bool lo = IS_ALIGNED(offset, 8);
 u64 size;
 int ret = 0;
 bool mmio_enabled =
  vgpu_cfg_space(vgpu)[PCI_COMMAND] & PCI_COMMAND_MEMORY;
 struct intel_vgpu_pci_bar *bars = vgpu->cfg_space.bar;
 if (new == 0xffffffff) {
  switch (offset) {
  case 131:
  case 130:
   size = ~(bars[INTEL_GVT_PCI_BAR_GTTMMIO].size -1);
   intel_vgpu_write_pci_bar(vgpu, offset,
      size >> (lo ? 0 : 32), lo);




   ret = trap_gttmmio(vgpu, 0);
   break;
  case 129:
  case 128:
   size = ~(bars[INTEL_GVT_PCI_BAR_APERTURE].size -1);
   intel_vgpu_write_pci_bar(vgpu, offset,
      size >> (lo ? 0 : 32), lo);
   ret = map_aperture(vgpu, 0);
   break;
  default:

   intel_vgpu_write_pci_bar(vgpu, offset, 0x0, 0);
  }
 } else {
  switch (offset) {
  case 131:
  case 130:




   trap_gttmmio(vgpu, 0);
   intel_vgpu_write_pci_bar(vgpu, offset, new, lo);
   ret = trap_gttmmio(vgpu, mmio_enabled);
   break;
  case 129:
  case 128:
   map_aperture(vgpu, 0);
   intel_vgpu_write_pci_bar(vgpu, offset, new, lo);
   ret = map_aperture(vgpu, mmio_enabled);
   break;
  default:
   intel_vgpu_write_pci_bar(vgpu, offset, new, lo);
  }
 }
 return ret;
}

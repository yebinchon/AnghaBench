
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ virtual_cfg_space; } ;
struct intel_vgpu {TYPE_1__ cfg_space; } ;


 int PCI_BASE_ADDRESS_MEM_MASK ;



 int PCI_BASE_ADDRESS_MEM_TYPE_MASK ;

__attribute__((used)) static u64 intel_vgpu_get_bar_addr(struct intel_vgpu *vgpu, int bar)
{
 u32 start_lo, start_hi;
 u32 mem_type;

 start_lo = (*(u32 *)(vgpu->cfg_space.virtual_cfg_space + bar)) &
   PCI_BASE_ADDRESS_MEM_MASK;
 mem_type = (*(u32 *)(vgpu->cfg_space.virtual_cfg_space + bar)) &
   PCI_BASE_ADDRESS_MEM_TYPE_MASK;

 switch (mem_type) {
 case 128:
  start_hi = (*(u32 *)(vgpu->cfg_space.virtual_cfg_space
      + bar + 4));
  break;
 case 129:
 case 130:

 default:

  start_hi = 0;
  break;
 }

 return ((u64)start_hi << 32) | start_lo;
}

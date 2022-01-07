
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ virtual_cfg_space; } ;
struct intel_vgpu {TYPE_1__ cfg_space; } ;


 int PCI_BASE_ADDRESS_MEM_MASK ;

__attribute__((used)) static inline u64 intel_vgpu_get_bar_gpa(struct intel_vgpu *vgpu, int bar)
{

 return (*(u64 *)(vgpu->cfg_space.virtual_cfg_space + bar)) &
   PCI_BASE_ADDRESS_MEM_MASK;
}

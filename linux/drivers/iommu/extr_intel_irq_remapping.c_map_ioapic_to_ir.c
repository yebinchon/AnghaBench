
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_iommu {int dummy; } ;
struct TYPE_2__ {int id; struct intel_iommu* iommu; } ;


 int MAX_IO_APICS ;
 TYPE_1__* ir_ioapic ;

__attribute__((used)) static struct intel_iommu *map_ioapic_to_ir(int apic)
{
 int i;

 for (i = 0; i < MAX_IO_APICS; i++)
  if (ir_ioapic[i].id == apic && ir_ioapic[i].iommu)
   return ir_ioapic[i].iommu;
 return ((void*)0);
}

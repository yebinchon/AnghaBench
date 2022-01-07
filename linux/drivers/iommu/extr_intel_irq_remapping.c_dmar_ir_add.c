
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int name; int reg_phys; int ecap; } ;
struct dmar_drhd_unit {int hdr; } ;


 int ENODEV ;
 int ecap_eim_support (int ) ;
 int intel_setup_irq_remapping (struct intel_iommu*) ;
 int intel_teardown_irq_remapping (struct intel_iommu*) ;
 int iommu_enable_irq_remapping (struct intel_iommu*) ;
 scalar_t__ ir_parse_ioapic_hpet_scope (int ,struct intel_iommu*) ;
 int ir_remove_ioapic_hpet_scope (struct intel_iommu*) ;
 int pr_err (char*,int ) ;
 int pr_info (char*,int ,int ) ;
 int pr_warn (char*,int ) ;
 int x2apic_enabled () ;

__attribute__((used)) static int dmar_ir_add(struct dmar_drhd_unit *dmaru, struct intel_iommu *iommu)
{
 int ret;
 int eim = x2apic_enabled();

 if (eim && !ecap_eim_support(iommu->ecap)) {
  pr_info("DRHD %Lx: EIM not supported by DRHD, ecap %Lx\n",
   iommu->reg_phys, iommu->ecap);
  return -ENODEV;
 }

 if (ir_parse_ioapic_hpet_scope(dmaru->hdr, iommu)) {
  pr_warn("DRHD %Lx: failed to parse managed IOAPIC/HPET\n",
   iommu->reg_phys);
  return -ENODEV;
 }




 ret = intel_setup_irq_remapping(iommu);
 if (ret) {
  pr_err("Failed to setup irq remapping for %s\n",
         iommu->name);
  intel_teardown_irq_remapping(iommu);
  ir_remove_ioapic_hpet_scope(iommu);
 } else {
  iommu_enable_irq_remapping(iommu);
 }

 return ret;
}

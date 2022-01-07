
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int agaw; } ;
struct device {int dummy; } ;


 int DMI_BIOS_VENDOR ;
 int DMI_BIOS_VERSION ;
 int DMI_PRODUCT_VERSION ;
 int EIO ;
 int WARN (int,char*,unsigned long long,int ,int ,...) ;
 unsigned long long agaw_to_width (int ) ;
 int dev_info (struct device*,char*,unsigned long long,unsigned long long) ;
 int dev_warn (struct device*,char*,unsigned long long,unsigned long long) ;
 int dmi_get_system_info (int ) ;
 scalar_t__ hw_pass_through ;
 int iommu_domain_identity_map (struct dmar_domain*,unsigned long long,unsigned long long) ;
 struct dmar_domain* si_domain ;

__attribute__((used)) static int domain_prepare_identity_map(struct device *dev,
           struct dmar_domain *domain,
           unsigned long long start,
           unsigned long long end)
{




 if (domain == si_domain && hw_pass_through) {
  dev_warn(dev, "Ignoring identity map for HW passthrough [0x%Lx - 0x%Lx]\n",
    start, end);
  return 0;
 }

 dev_info(dev, "Setting identity map [0x%Lx - 0x%Lx]\n", start, end);

 if (end < start) {
  WARN(1, "Your BIOS is broken; RMRR ends before it starts!\n"
   "BIOS vendor: %s; Ver: %s; Product Version: %s\n",
   dmi_get_system_info(DMI_BIOS_VENDOR),
   dmi_get_system_info(DMI_BIOS_VERSION),
       dmi_get_system_info(DMI_PRODUCT_VERSION));
  return -EIO;
 }

 if (end >> agaw_to_width(domain->agaw)) {
  WARN(1, "Your BIOS is broken; RMRR exceeds permitted address width (%d bits)\n"
       "BIOS vendor: %s; Ver: %s; Product Version: %s\n",
       agaw_to_width(domain->agaw),
       dmi_get_system_info(DMI_BIOS_VENDOR),
       dmi_get_system_info(DMI_BIOS_VERSION),
       dmi_get_system_info(DMI_PRODUCT_VERSION));
  return -EIO;
 }

 return iommu_domain_identity_map(domain, start, end);
}

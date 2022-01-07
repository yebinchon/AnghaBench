
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int devfn; int bus; } ;
struct TYPE_2__ {int x86; int x86_model; int x86_stepping; } ;


 int CPUID_PKGTYPE_AM2R2_AM3 ;
 int CPUID_PKGTYPE_F ;
 int CPUID_PKGTYPE_MASK ;
 int DDR3_MODE ;
 int PCI_DEVFN (int ,int) ;
 int PCI_SLOT (int ) ;
 int REG_DCT0_CONFIG_HIGH ;
 TYPE_1__ boot_cpu_data ;
 int cpuid_ebx (int) ;
 int pci_bus_read_config_dword (int ,int ,int ,int*) ;

__attribute__((used)) static bool has_erratum_319(struct pci_dev *pdev)
{
 u32 pkg_type, reg_dram_cfg;

 if (boot_cpu_data.x86 != 0x10)
  return 0;





 pkg_type = cpuid_ebx(0x80000001) & CPUID_PKGTYPE_MASK;
 if (pkg_type == CPUID_PKGTYPE_F)
  return 1;
 if (pkg_type != CPUID_PKGTYPE_AM2R2_AM3)
  return 0;


 pci_bus_read_config_dword(pdev->bus,
      PCI_DEVFN(PCI_SLOT(pdev->devfn), 2),
      REG_DCT0_CONFIG_HIGH, &reg_dram_cfg);
 if (reg_dram_cfg & DDR3_MODE)
  return 0;







 return boot_cpu_data.x86_model < 4 ||
        (boot_cpu_data.x86_model == 4 && boot_cpu_data.x86_stepping <= 2);
}

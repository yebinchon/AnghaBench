
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {scalar_t__ bridge_d3; } ;
struct acpi_buffer {int member_0; char* member_1; } ;
typedef int acpi_method_name ;
struct TYPE_3__ {int handle; } ;
struct TYPE_4__ {int atpx_detected; int bridge_pm_usable; TYPE_1__ atpx; } ;


 int ACPI_FULL_PATHNAME ;
 int PCI_CLASS_DISPLAY_OTHER ;
 int PCI_CLASS_DISPLAY_VGA ;
 int acpi_get_name (int ,int ,struct acpi_buffer*) ;
 struct pci_dev* pci_get_class (int,struct pci_dev*) ;
 struct pci_dev* pci_upstream_bridge (struct pci_dev*) ;
 int pr_info (char*,char*) ;
 int radeon_atpx_init () ;
 int radeon_atpx_pci_probe_handle (struct pci_dev*) ;
 TYPE_2__ radeon_atpx_priv ;

__attribute__((used)) static bool radeon_atpx_detect(void)
{
 char acpi_method_name[255] = { 0 };
 struct acpi_buffer buffer = {sizeof(acpi_method_name), acpi_method_name};
 struct pci_dev *pdev = ((void*)0);
 bool has_atpx = 0;
 int vga_count = 0;
 bool d3_supported = 0;
 struct pci_dev *parent_pdev;

 while ((pdev = pci_get_class(PCI_CLASS_DISPLAY_VGA << 8, pdev)) != ((void*)0)) {
  vga_count++;

  has_atpx |= (radeon_atpx_pci_probe_handle(pdev) == 1);

  parent_pdev = pci_upstream_bridge(pdev);
  d3_supported |= parent_pdev && parent_pdev->bridge_d3;
 }


 while ((pdev = pci_get_class(PCI_CLASS_DISPLAY_OTHER << 8, pdev)) != ((void*)0)) {
  vga_count++;

  has_atpx |= (radeon_atpx_pci_probe_handle(pdev) == 1);

  parent_pdev = pci_upstream_bridge(pdev);
  d3_supported |= parent_pdev && parent_pdev->bridge_d3;
 }

 if (has_atpx && vga_count == 2) {
  acpi_get_name(radeon_atpx_priv.atpx.handle, ACPI_FULL_PATHNAME, &buffer);
  pr_info("vga_switcheroo: detected switching method %s handle\n",
   acpi_method_name);
  radeon_atpx_priv.atpx_detected = 1;
  radeon_atpx_priv.bridge_pm_usable = d3_supported;
  radeon_atpx_init();
  return 1;
 }
 return 0;
}

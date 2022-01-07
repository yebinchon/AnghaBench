
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpe; int sse; int rma; int rta; int sta; int mdpe; } ;
union cvmx_pci_cfg01 {int u32; TYPE_1__ s; } ;
struct edac_pci_ctl_info {int ctl_name; } ;


 int CVMX_NPI_PCI_CFG01 ;
 int edac_pci_handle_npe (struct edac_pci_ctl_info*,char*) ;
 int edac_pci_handle_pe (struct edac_pci_ctl_info*,int ) ;
 int octeon_npi_read32 (int ) ;
 int octeon_npi_write32 (int ,int ) ;

__attribute__((used)) static void octeon_pci_poll(struct edac_pci_ctl_info *pci)
{
 union cvmx_pci_cfg01 cfg01;

 cfg01.u32 = octeon_npi_read32(CVMX_NPI_PCI_CFG01);
 if (cfg01.s.dpe) {
  edac_pci_handle_pe(pci, pci->ctl_name);
  cfg01.s.dpe = 1;
  octeon_npi_write32(CVMX_NPI_PCI_CFG01, cfg01.u32);
 }
 if (cfg01.s.sse) {
  edac_pci_handle_npe(pci, "Signaled System Error");
  cfg01.s.sse = 1;
  octeon_npi_write32(CVMX_NPI_PCI_CFG01, cfg01.u32);
 }
 if (cfg01.s.rma) {
  edac_pci_handle_npe(pci, "Received Master Abort");
  cfg01.s.rma = 1;
  octeon_npi_write32(CVMX_NPI_PCI_CFG01, cfg01.u32);
 }
 if (cfg01.s.rta) {
  edac_pci_handle_npe(pci, "Received Target Abort");
  cfg01.s.rta = 1;
  octeon_npi_write32(CVMX_NPI_PCI_CFG01, cfg01.u32);
 }
 if (cfg01.s.sta) {
  edac_pci_handle_npe(pci, "Signaled Target Abort");
  cfg01.s.sta = 1;
  octeon_npi_write32(CVMX_NPI_PCI_CFG01, cfg01.u32);
 }
 if (cfg01.s.mdpe) {
  edac_pci_handle_npe(pci, "Master Data Parity Error");
  cfg01.s.mdpe = 1;
  octeon_npi_write32(CVMX_NPI_PCI_CFG01, cfg01.u32);
 }
}

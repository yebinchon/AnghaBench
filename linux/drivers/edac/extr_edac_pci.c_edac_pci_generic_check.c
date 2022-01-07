
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_ctl_info {int dummy; } ;


 int edac_dbg (int,char*) ;
 int edac_pci_do_parity_check () ;

__attribute__((used)) static void edac_pci_generic_check(struct edac_pci_ctl_info *pci)
{
 edac_dbg(4, "\n");
 edac_pci_do_parity_check();
}

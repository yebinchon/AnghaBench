
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int REG_REPORTED_TEMPERATURE ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;

__attribute__((used)) static void read_tempreg_pci(struct pci_dev *pdev, u32 *regval)
{
 pci_read_config_dword(pdev, REG_REPORTED_TEMPERATURE, regval);
}

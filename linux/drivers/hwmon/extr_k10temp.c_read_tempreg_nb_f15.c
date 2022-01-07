
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;


 int F15H_M60H_REPORTED_TEMP_CTRL_OFFSET ;
 int PCI_DEVFN (int ,int ) ;
 int amd_nb_index_read (struct pci_dev*,int ,int,int ,int *) ;

__attribute__((used)) static void read_tempreg_nb_f15(struct pci_dev *pdev, u32 *regval)
{
 amd_nb_index_read(pdev, PCI_DEVFN(0, 0), 0xb8,
     F15H_M60H_REPORTED_TEMP_CTRL_OFFSET, regval);
}

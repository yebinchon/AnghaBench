
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int pdev; } ;


 int X38_ERRSTS ;
 int X38_ERRSTS_BITS ;
 int pci_write_bits16 (struct pci_dev*,int ,int ,int ) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void x38_clear_error_info(struct mem_ctl_info *mci)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->pdev);





 pci_write_bits16(pdev, X38_ERRSTS, X38_ERRSTS_BITS,
    X38_ERRSTS_BITS);
}

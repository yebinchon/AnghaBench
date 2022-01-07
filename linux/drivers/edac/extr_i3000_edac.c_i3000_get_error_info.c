
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int pdev; } ;
struct i3000_error_info {int errsts; int errsts2; int derrsyn; int deap; int edeap; } ;


 int I3000_DEAP ;
 int I3000_DERRSYN ;
 int I3000_EDEAP ;
 int I3000_ERRSTS ;
 int I3000_ERRSTS_BITS ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_bits16 (struct pci_dev*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void i3000_get_error_info(struct mem_ctl_info *mci,
     struct i3000_error_info *info)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->pdev);






 pci_read_config_word(pdev, I3000_ERRSTS, &info->errsts);
 if (!(info->errsts & I3000_ERRSTS_BITS))
  return;
 pci_read_config_byte(pdev, I3000_EDEAP, &info->edeap);
 pci_read_config_dword(pdev, I3000_DEAP, &info->deap);
 pci_read_config_byte(pdev, I3000_DERRSYN, &info->derrsyn);
 pci_read_config_word(pdev, I3000_ERRSTS, &info->errsts2);







 if ((info->errsts ^ info->errsts2) & I3000_ERRSTS_BITS) {
  pci_read_config_byte(pdev, I3000_EDEAP, &info->edeap);
  pci_read_config_dword(pdev, I3000_DEAP, &info->deap);
  pci_read_config_byte(pdev, I3000_DERRSYN, &info->derrsyn);
 }





 pci_write_bits16(pdev, I3000_ERRSTS, I3000_ERRSTS_BITS,
    I3000_ERRSTS_BITS);
}

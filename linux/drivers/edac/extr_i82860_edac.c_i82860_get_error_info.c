
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int pdev; } ;
struct i82860_error_info {int errsts; int derrsyn; int errsts2; int eap; } ;


 int I82860_DERRCTL_STS ;
 int I82860_EAP ;
 int I82860_ERRSTS ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_bits16 (struct pci_dev*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void i82860_get_error_info(struct mem_ctl_info *mci,
    struct i82860_error_info *info)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->pdev);






 pci_read_config_word(pdev, I82860_ERRSTS, &info->errsts);
 pci_read_config_dword(pdev, I82860_EAP, &info->eap);
 pci_read_config_word(pdev, I82860_DERRCTL_STS, &info->derrsyn);
 pci_read_config_word(pdev, I82860_ERRSTS, &info->errsts2);

 pci_write_bits16(pdev, I82860_ERRSTS, 0x0003, 0x0003);






 if (!(info->errsts2 & 0x0003))
  return;

 if ((info->errsts ^ info->errsts2) & 0x0003) {
  pci_read_config_dword(pdev, I82860_EAP, &info->eap);
  pci_read_config_word(pdev, I82860_DERRCTL_STS, &info->derrsyn);
 }
}

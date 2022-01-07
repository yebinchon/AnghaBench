
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int pdev; } ;
struct i82875p_error_info {int errsts; int errsts2; int derrsyn; int des; int eap; } ;


 int I82875P_DERRSYN ;
 int I82875P_DES ;
 int I82875P_EAP ;
 int I82875P_ERRSTS ;
 int pci_read_config_byte (struct pci_dev*,int ,int *) ;
 int pci_read_config_dword (struct pci_dev*,int ,int *) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_bits16 (struct pci_dev*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void i82875p_get_error_info(struct mem_ctl_info *mci,
    struct i82875p_error_info *info)
{
 struct pci_dev *pdev;

 pdev = to_pci_dev(mci->pdev);






 pci_read_config_word(pdev, I82875P_ERRSTS, &info->errsts);

 if (!(info->errsts & 0x0081))
  return;

 pci_read_config_dword(pdev, I82875P_EAP, &info->eap);
 pci_read_config_byte(pdev, I82875P_DES, &info->des);
 pci_read_config_byte(pdev, I82875P_DERRSYN, &info->derrsyn);
 pci_read_config_word(pdev, I82875P_ERRSTS, &info->errsts2);







 if ((info->errsts ^ info->errsts2) & 0x0081) {
  pci_read_config_dword(pdev, I82875P_EAP, &info->eap);
  pci_read_config_byte(pdev, I82875P_DES, &info->des);
  pci_read_config_byte(pdev, I82875P_DERRSYN, &info->derrsyn);
 }

 pci_write_bits16(pdev, I82875P_ERRSTS, 0x0081, 0x0081);
}

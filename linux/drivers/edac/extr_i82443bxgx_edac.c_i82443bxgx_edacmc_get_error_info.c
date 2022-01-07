
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct mem_ctl_info {int pdev; } ;
struct i82443bxgx_edacmc_error_info {int eap; } ;


 int I82443BXGX_EAP ;
 int I82443BXGX_EAP_OFFSET_MBE ;
 int I82443BXGX_EAP_OFFSET_SBE ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_write_bits32 (struct pci_dev*,int ,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void i82443bxgx_edacmc_get_error_info(struct mem_ctl_info *mci,
    struct i82443bxgx_edacmc_error_info
    *info)
{
 struct pci_dev *pdev;
 pdev = to_pci_dev(mci->pdev);
 pci_read_config_dword(pdev, I82443BXGX_EAP, &info->eap);
 if (info->eap & I82443BXGX_EAP_OFFSET_SBE)

  pci_write_bits32(pdev, I82443BXGX_EAP,
     I82443BXGX_EAP_OFFSET_SBE,
     I82443BXGX_EAP_OFFSET_SBE);

 if (info->eap & I82443BXGX_EAP_OFFSET_MBE)

  pci_write_bits32(pdev, I82443BXGX_EAP,
     I82443BXGX_EAP_OFFSET_MBE,
     I82443BXGX_EAP_OFFSET_MBE);
}

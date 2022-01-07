
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct amd_mp2_dev {int dummy; } ;


 int amd_mp2_clear_reg (struct amd_mp2_dev*) ;
 int pci_clear_master (struct pci_dev*) ;
 struct amd_mp2_dev* pci_get_drvdata (struct pci_dev*) ;
 int pci_intx (struct pci_dev*,int ) ;
 int pm_runtime_forbid (int *) ;
 int pm_runtime_get_noresume (int *) ;

__attribute__((used)) static void amd_mp2_pci_remove(struct pci_dev *pci_dev)
{
 struct amd_mp2_dev *privdata = pci_get_drvdata(pci_dev);

 pm_runtime_forbid(&pci_dev->dev);
 pm_runtime_get_noresume(&pci_dev->dev);

 pci_intx(pci_dev, 0);
 pci_clear_master(pci_dev);

 amd_mp2_clear_reg(privdata);
}

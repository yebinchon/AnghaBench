
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_lmc {scalar_t__ regs; } ;
struct pci_dev {int dev; } ;
struct mem_ctl_info {struct thunderx_lmc* pvt_info; } ;


 int LMC_INT_ENA_ALL ;
 scalar_t__ LMC_INT_ENA_W1C ;
 int edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 struct mem_ctl_info* pci_get_drvdata (struct pci_dev*) ;
 int writeq (int ,scalar_t__) ;

__attribute__((used)) static void thunderx_lmc_remove(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci = pci_get_drvdata(pdev);
 struct thunderx_lmc *lmc = mci->pvt_info;

 writeq(LMC_INT_ENA_ALL, lmc->regs + LMC_INT_ENA_W1C);

 edac_mc_del_mc(&pdev->dev);
 edac_mc_free(mci);
}

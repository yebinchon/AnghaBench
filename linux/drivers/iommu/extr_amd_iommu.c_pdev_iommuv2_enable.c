
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int AMD_PRI_DEV_ERRATUM_ENABLE_RESET ;
 int AMD_PRI_DEV_ERRATUM_LIMIT_REQ_ONE ;
 int PAGE_SHIFT ;
 int pci_disable_pasid (struct pci_dev*) ;
 int pci_disable_pri (struct pci_dev*) ;
 int pci_enable_ats (struct pci_dev*,int ) ;
 int pci_enable_pasid (struct pci_dev*,int ) ;
 int pci_enable_pri (struct pci_dev*,int) ;
 int pci_reset_pri (struct pci_dev*) ;
 int pdev_pri_erratum (struct pci_dev*,int ) ;
 int pri_reset_while_enabled (struct pci_dev*) ;

__attribute__((used)) static int pdev_iommuv2_enable(struct pci_dev *pdev)
{
 bool reset_enable;
 int reqs, ret;


 reqs = 32;
 if (pdev_pri_erratum(pdev, AMD_PRI_DEV_ERRATUM_LIMIT_REQ_ONE))
  reqs = 1;
 reset_enable = pdev_pri_erratum(pdev, AMD_PRI_DEV_ERRATUM_ENABLE_RESET);


 ret = pci_enable_pasid(pdev, 0);
 if (ret)
  goto out_err;


 ret = pci_reset_pri(pdev);
 if (ret)
  goto out_err;


 ret = pci_enable_pri(pdev, reqs);
 if (ret)
  goto out_err;

 if (reset_enable) {
  ret = pri_reset_while_enabled(pdev);
  if (ret)
   goto out_err;
 }

 ret = pci_enable_ats(pdev, PAGE_SHIFT);
 if (ret)
  goto out_err;

 return 0;

out_err:
 pci_disable_pri(pdev);
 pci_disable_pasid(pdev);

 return ret;
}

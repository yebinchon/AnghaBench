
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {struct i5100_priv* pvt_info; } ;
struct i5100_priv {struct pci_dev* einj; struct pci_dev* ch1mm; struct pci_dev* ch0mm; int i5100_scrubbing; scalar_t__ scrub_enable; int debugfs; } ;


 int cancel_delayed_work_sync (int *) ;
 int edac_debugfs_remove_recursive (int ) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;

__attribute__((used)) static void i5100_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;
 struct i5100_priv *priv;

 mci = edac_mc_del_mc(&pdev->dev);

 if (!mci)
  return;

 priv = mci->pvt_info;

 edac_debugfs_remove_recursive(priv->debugfs);

 priv->scrub_enable = 0;
 cancel_delayed_work_sync(&(priv->i5100_scrubbing));

 pci_disable_device(pdev);
 pci_disable_device(priv->ch0mm);
 pci_disable_device(priv->ch1mm);
 pci_disable_device(priv->einj);
 pci_dev_put(priv->ch0mm);
 pci_dev_put(priv->ch1mm);
 pci_dev_put(priv->einj);

 edac_mc_free(mci);
}

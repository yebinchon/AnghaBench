
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {int driver_data; } ;
struct pci_dev {int dummy; } ;


 int edac_dbg (int ,char*) ;
 int i82443bxgx_edacmc_probe1 (struct pci_dev*,int ) ;
 int * mci_pdev ;
 int * pci_dev_get (struct pci_dev*) ;

__attribute__((used)) static int i82443bxgx_edacmc_init_one(struct pci_dev *pdev,
          const struct pci_device_id *ent)
{
 int rc;

 edac_dbg(0, "MC:\n");


 rc = i82443bxgx_edacmc_probe1(pdev, ent->driver_data);

 if (mci_pdev == ((void*)0))
  mci_pdev = pci_dev_get(pdev);

 return rc;
}

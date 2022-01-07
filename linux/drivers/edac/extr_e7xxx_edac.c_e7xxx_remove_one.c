
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct e7xxx_pvt {int bridge_ck; } ;


 scalar_t__ e7xxx_pci ;
 int edac_dbg (int ,char*) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int edac_pci_release_generic_ctl (scalar_t__) ;
 int pci_dev_put (int ) ;

__attribute__((used)) static void e7xxx_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;
 struct e7xxx_pvt *pvt;

 edac_dbg(0, "\n");

 if (e7xxx_pci)
  edac_pci_release_generic_ctl(e7xxx_pci);

 if ((mci = edac_mc_del_mc(&pdev->dev)) == ((void*)0))
  return;

 pvt = (struct e7xxx_pvt *)mci->pvt_info;
 pci_dev_put(pvt->bridge_ck);
 edac_mc_free(mci);
}

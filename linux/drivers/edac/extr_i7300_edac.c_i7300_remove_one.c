
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct mem_ctl_info {scalar_t__ pvt_info; } ;
struct i7300_pvt {char* tmp_prt_buffer; } ;


 int edac_dbg (int ,char*) ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 int edac_pci_release_generic_ctl (scalar_t__) ;
 scalar_t__ i7300_pci ;
 int i7300_put_devices (struct mem_ctl_info*) ;
 int kfree (char*) ;

__attribute__((used)) static void i7300_remove_one(struct pci_dev *pdev)
{
 struct mem_ctl_info *mci;
 char *tmp;

 edac_dbg(0, "\n");

 if (i7300_pci)
  edac_pci_release_generic_ctl(i7300_pci);

 mci = edac_mc_del_mc(&pdev->dev);
 if (!mci)
  return;

 tmp = ((struct i7300_pvt *)mci->pvt_info)->tmp_prt_buffer;


 i7300_put_devices(mci);

 kfree(tmp);
 edac_mc_free(mci);
}

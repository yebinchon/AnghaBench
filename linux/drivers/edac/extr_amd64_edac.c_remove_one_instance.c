
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct mem_ctl_info {struct ecc_settings* pvt_info; } ;
struct ecc_settings {int dummy; } ;
typedef struct ecc_settings amd64_pvt ;
struct TYPE_2__ {struct pci_dev* misc; } ;


 int WARN_ON (int) ;
 struct ecc_settings** ecc_stngs ;
 struct mem_ctl_info* edac_mc_del_mc (int *) ;
 int edac_mc_free (struct mem_ctl_info*) ;
 struct mem_ctl_info* find_mci_by_dev (int *) ;
 int free_mc_sibling_devs (struct ecc_settings*) ;
 int kfree (struct ecc_settings*) ;
 TYPE_1__* node_to_amd_nb (unsigned int) ;
 int restore_ecc_error_reporting (struct ecc_settings*,unsigned int,struct pci_dev*) ;

__attribute__((used)) static void remove_one_instance(unsigned int nid)
{
 struct pci_dev *F3 = node_to_amd_nb(nid)->misc;
 struct ecc_settings *s = ecc_stngs[nid];
 struct mem_ctl_info *mci;
 struct amd64_pvt *pvt;

 mci = find_mci_by_dev(&F3->dev);
 WARN_ON(!mci);


 mci = edac_mc_del_mc(&F3->dev);
 if (!mci)
  return;

 pvt = mci->pvt_info;

 restore_ecc_error_reporting(s, nid, F3);

 free_mc_sibling_devs(pvt);

 kfree(ecc_stngs[nid]);
 ecc_stngs[nid] = ((void*)0);


 mci->pvt_info = ((void*)0);

 kfree(pvt);
 edac_mc_free(mci);
}

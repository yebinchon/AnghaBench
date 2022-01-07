
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edac_pci_gen_data {scalar_t__ edac_idx; } ;
struct edac_pci_ctl_info {char const* mod_name; int edac_check; int ctl_name; int dev_name; struct device* dev; struct edac_pci_gen_data* pvt_info; } ;
struct device {int dummy; } ;


 scalar_t__ EDAC_OPSTATE_POLL ;
 int EDAC_PCI_GENCTL_NAME ;
 int dev_set_drvdata (struct device*,struct edac_pci_ctl_info*) ;
 int edac_dbg (int,char*) ;
 scalar_t__ edac_op_state ;
 scalar_t__ edac_pci_add_device (struct edac_pci_ctl_info*,scalar_t__) ;
 struct edac_pci_ctl_info* edac_pci_alloc_ctl_info (int,int ) ;
 int edac_pci_free_ctl_info (struct edac_pci_ctl_info*) ;
 int edac_pci_generic_check ;
 int edac_pci_idx ;
 int pci_name (int ) ;
 int to_pci_dev (struct device*) ;

struct edac_pci_ctl_info *edac_pci_create_generic_ctl(struct device *dev,
      const char *mod_name)
{
 struct edac_pci_ctl_info *pci;
 struct edac_pci_gen_data *pdata;

 pci = edac_pci_alloc_ctl_info(sizeof(*pdata), EDAC_PCI_GENCTL_NAME);
 if (!pci)
  return ((void*)0);

 pdata = pci->pvt_info;
 pci->dev = dev;
 dev_set_drvdata(pci->dev, pci);
 pci->dev_name = pci_name(to_pci_dev(dev));

 pci->mod_name = mod_name;
 pci->ctl_name = EDAC_PCI_GENCTL_NAME;
 if (edac_op_state == EDAC_OPSTATE_POLL)
  pci->edac_check = edac_pci_generic_check;

 pdata->edac_idx = edac_pci_idx++;

 if (edac_pci_add_device(pci, pdata->edac_idx) > 0) {
  edac_dbg(3, "failed edac_pci_add_device()\n");
  edac_pci_free_ctl_info(pci);
  return ((void*)0);
 }

 return pci;
}

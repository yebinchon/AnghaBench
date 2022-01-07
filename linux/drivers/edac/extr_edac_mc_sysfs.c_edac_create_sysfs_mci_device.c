
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct attribute_group const** groups; int parent; int * type; } ;
struct mem_ctl_info {int tot_dimms; TYPE_1__ dev; struct dimm_info** dimms; int mc_idx; } ;
struct dimm_info {TYPE_1__ dev; int nr_pages; } ;
struct attribute_group {int dummy; } ;


 int dev_name (TYPE_1__*) ;
 int dev_set_drvdata (TYPE_1__*,struct mem_ctl_info*) ;
 int dev_set_name (TYPE_1__*,char*,int ) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int device_unregister (TYPE_1__*) ;
 int edac_create_csrow_objects (struct mem_ctl_info*) ;
 int edac_create_debugfs_nodes (struct mem_ctl_info*) ;
 int edac_create_dimm_object (struct mem_ctl_info*,struct dimm_info*,int) ;
 int edac_dbg (int,char*,int ) ;
 int mci_attr_type ;
 int mci_pdev ;
 int pm_runtime_forbid (TYPE_1__*) ;
 int put_device (TYPE_1__*) ;

int edac_create_sysfs_mci_device(struct mem_ctl_info *mci,
     const struct attribute_group **groups)
{
 int i, err;


 mci->dev.type = &mci_attr_type;
 device_initialize(&mci->dev);

 mci->dev.parent = mci_pdev;
 mci->dev.groups = groups;
 dev_set_name(&mci->dev, "mc%d", mci->mc_idx);
 dev_set_drvdata(&mci->dev, mci);
 pm_runtime_forbid(&mci->dev);

 err = device_add(&mci->dev);
 if (err < 0) {
  edac_dbg(1, "failure: create device %s\n", dev_name(&mci->dev));
  put_device(&mci->dev);
  return err;
 }

 edac_dbg(0, "device %s created\n", dev_name(&mci->dev));




 for (i = 0; i < mci->tot_dimms; i++) {
  struct dimm_info *dimm = mci->dimms[i];

  if (!dimm->nr_pages)
   continue;

  err = edac_create_dimm_object(mci, dimm, i);
  if (err)
   goto fail_unregister_dimm;
 }







 edac_create_debugfs_nodes(mci);
 return 0;

fail_unregister_dimm:
 for (i--; i >= 0; i--) {
  struct dimm_info *dimm = mci->dimms[i];
  if (!dimm->nr_pages)
   continue;

  device_unregister(&dimm->dev);
 }
 device_unregister(&mci->dev);

 return err;
}

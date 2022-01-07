
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int tot_dimms; struct dimm_info** dimms; int debugfs; } ;
struct dimm_info {scalar_t__ nr_pages; int dev; } ;


 int dev_name (int *) ;
 int device_unregister (int *) ;
 int edac_dbg (int,char*,...) ;
 int edac_debugfs_remove_recursive (int ) ;
 int edac_delete_csrow_objects (struct mem_ctl_info*) ;

void edac_remove_sysfs_mci_device(struct mem_ctl_info *mci)
{
 int i;

 edac_dbg(0, "\n");
 for (i = 0; i < mci->tot_dimms; i++) {
  struct dimm_info *dimm = mci->dimms[i];
  if (dimm->nr_pages == 0)
   continue;
  edac_dbg(1, "unregistering device %s\n", dev_name(&dimm->dev));
  device_unregister(&dimm->dev);
 }
}

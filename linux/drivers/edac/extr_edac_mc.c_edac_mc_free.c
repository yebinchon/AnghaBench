
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dev; } ;


 int _edac_mc_free (struct mem_ctl_info*) ;
 int device_is_registered (int *) ;
 int edac_dbg (int,char*) ;
 int edac_unregister_sysfs (struct mem_ctl_info*) ;

void edac_mc_free(struct mem_ctl_info *mci)
{
 edac_dbg(1, "\n");




 if (!device_is_registered(&mci->dev)) {
  _edac_mc_free(mci);
  return;
 }


 edac_unregister_sysfs(mci);
}

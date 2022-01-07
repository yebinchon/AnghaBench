
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dev; } ;


 int dev_name (int *) ;
 int device_unregister (int *) ;
 int edac_dbg (int,char*,int ) ;

void edac_unregister_sysfs(struct mem_ctl_info *mci)
{
 edac_dbg(1, "unregistering device %s\n", dev_name(&mci->dev));
 device_unregister(&mci->dev);
}

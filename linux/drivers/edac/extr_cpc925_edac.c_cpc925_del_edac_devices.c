
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpc925_dev_info {int ctl_name; int (* exit ) (struct cpc925_dev_info*) ;int pdev; TYPE_1__* edac_dev; scalar_t__ init; } ;
struct TYPE_2__ {int dev; } ;


 struct cpc925_dev_info* cpc925_devs ;
 int edac_dbg (int ,char*,int ) ;
 int edac_device_del_device (int ) ;
 int edac_device_free_ctl_info (TYPE_1__*) ;
 int platform_device_unregister (int ) ;
 int stub1 (struct cpc925_dev_info*) ;

__attribute__((used)) static void cpc925_del_edac_devices(void)
{
 struct cpc925_dev_info *dev_info;

 for (dev_info = &cpc925_devs[0]; dev_info->init; dev_info++) {
  if (dev_info->edac_dev) {
   edac_device_del_device(dev_info->edac_dev->dev);
   edac_device_free_ctl_info(dev_info->edac_dev);
   platform_device_unregister(dev_info->pdev);
  }

  if (dev_info->exit)
   dev_info->exit(dev_info);

  edac_dbg(0, "Successfully deleted edac device for %s\n",
    dev_info->ctl_name);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_edac_pmd_ctx {struct edac_device_ctl_info* edac_dev; } ;
struct edac_device_ctl_info {int dev; } ;


 int edac_device_del_device (int ) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 int xgene_edac_pmd_hw_ctl (struct edac_device_ctl_info*,int ) ;

__attribute__((used)) static int xgene_edac_pmd_remove(struct xgene_edac_pmd_ctx *pmd)
{
 struct edac_device_ctl_info *edac_dev = pmd->edac_dev;

 xgene_edac_pmd_hw_ctl(edac_dev, 0);
 edac_device_del_device(edac_dev->dev);
 edac_device_free_ctl_info(edac_dev);
 return 0;
}

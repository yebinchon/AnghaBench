
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xgene_edac_dev_ctx {TYPE_1__* edac; struct edac_device_ctl_info* edac_dev; } ;
struct edac_device_ctl_info {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int edac_device_del_device (int ) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 int xgene_edac_l3_hw_init (struct edac_device_ctl_info*,int ) ;

__attribute__((used)) static int xgene_edac_l3_remove(struct xgene_edac_dev_ctx *l3)
{
 struct edac_device_ctl_info *edac_dev = l3->edac_dev;

 xgene_edac_l3_hw_init(edac_dev, 0);
 edac_device_del_device(l3->edac->dev);
 edac_device_free_ctl_info(edac_dev);
 return 0;
}

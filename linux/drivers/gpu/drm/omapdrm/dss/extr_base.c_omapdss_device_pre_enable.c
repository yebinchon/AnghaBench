
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; struct omap_dss_device* next; } ;
struct TYPE_2__ {int (* pre_enable ) (struct omap_dss_device*) ;} ;


 int stub1 (struct omap_dss_device*) ;

void omapdss_device_pre_enable(struct omap_dss_device *dssdev)
{
 if (!dssdev)
  return;

 omapdss_device_pre_enable(dssdev->next);

 if (dssdev->ops->pre_enable)
  dssdev->ops->pre_enable(dssdev);
}

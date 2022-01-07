
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {TYPE_1__* ops; struct omap_dss_device* next; } ;
struct TYPE_2__ {int (* disable ) (struct omap_dss_device*) ;} ;


 int stub1 (struct omap_dss_device*) ;

void omapdss_device_disable(struct omap_dss_device *dssdev)
{
 if (!dssdev)
  return;

 omapdss_device_disable(dssdev->next);

 if (dssdev->ops->disable)
  dssdev->ops->disable(dssdev);
}

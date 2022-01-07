
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct omap_dss_device {int state; struct omap_dss_device* next; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* post_disable ) (struct omap_dss_device*) ;} ;


 int OMAP_DSS_DISPLAY_DISABLED ;
 int stub1 (struct omap_dss_device*) ;

void omapdss_device_post_disable(struct omap_dss_device *dssdev)
{
 if (!dssdev)
  return;

 if (dssdev->ops->post_disable)
  dssdev->ops->post_disable(dssdev);

 omapdss_device_post_disable(dssdev->next);

 dssdev->state = OMAP_DSS_DISPLAY_DISABLED;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {scalar_t__ state; struct dss_device* dss; TYPE_2__* ops; int display; int id; int panel; int bridge; int dev; } ;
struct dss_device {TYPE_1__* pdev; } ;
struct TYPE_4__ {int (* disconnect ) (struct omap_dss_device*,struct omap_dss_device*) ;} ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ OMAP_DSS_DISPLAY_DISABLED ;
 int WARN_ON (int) ;
 int dev_dbg (int *,char*,char*,char*) ;
 char* dev_name (int ) ;
 int omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,struct omap_dss_device*) ;

void omapdss_device_disconnect(struct omap_dss_device *src,
          struct omap_dss_device *dst)
{
 struct dss_device *dss = src ? src->dss : dst->dss;

 dev_dbg(&dss->pdev->dev, "disconnect(%s, %s)\n",
  src ? dev_name(src->dev) : "NULL",
  dst ? dev_name(dst->dev) : "NULL");

 if (!dst) {
  WARN_ON(!src->bridge && !src->panel);
  return;
 }

 if (!dst->id && !omapdss_device_is_connected(dst)) {
  WARN_ON(!dst->display);
  return;
 }

 WARN_ON(dst->state != OMAP_DSS_DISPLAY_DISABLED);

 dst->ops->disconnect(src, dst);
 dst->dss = ((void*)0);
}

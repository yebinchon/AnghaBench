
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct omap_dss_device {struct dss_device* dss; TYPE_1__* ops; scalar_t__ panel; scalar_t__ bridge; int dev; } ;
struct dss_device {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int (* connect ) (struct omap_dss_device*,struct omap_dss_device*) ;} ;


 int EBUSY ;
 int EINVAL ;
 int dev_dbg (int *,char*,char*,char*) ;
 char* dev_name (int ) ;
 scalar_t__ omapdss_device_is_connected (struct omap_dss_device*) ;
 int stub1 (struct omap_dss_device*,struct omap_dss_device*) ;

int omapdss_device_connect(struct dss_device *dss,
      struct omap_dss_device *src,
      struct omap_dss_device *dst)
{
 int ret;

 dev_dbg(&dss->pdev->dev, "connect(%s, %s)\n",
  src ? dev_name(src->dev) : "NULL",
  dst ? dev_name(dst->dev) : "NULL");

 if (!dst) {






  return src && (src->bridge || src->panel) ? 0 : -EINVAL;
 }

 if (omapdss_device_is_connected(dst))
  return -EBUSY;

 dst->dss = dss;

 ret = dst->ops->connect(src, dst);
 if (ret < 0) {
  dst->dss = ((void*)0);
  return ret;
 }

 return 0;
}

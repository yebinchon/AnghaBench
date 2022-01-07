
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc4_dev {TYPE_1__* hvs; } ;
struct drm_device {struct vc4_dev* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_4__ {scalar_t__ allocated; } ;
struct TYPE_3__ {int lbm_mm; int dlist_mm; TYPE_2__ mitchell_netravali_filter; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int drm_mm_remove_node (TYPE_2__*) ;
 int drm_mm_takedown (int *) ;

__attribute__((used)) static void vc4_hvs_unbind(struct device *dev, struct device *master,
      void *data)
{
 struct drm_device *drm = dev_get_drvdata(master);
 struct vc4_dev *vc4 = drm->dev_private;

 if (vc4->hvs->mitchell_netravali_filter.allocated)
  drm_mm_remove_node(&vc4->hvs->mitchell_netravali_filter);

 drm_mm_takedown(&vc4->hvs->dlist_mm);
 drm_mm_takedown(&vc4->hvs->lbm_mm);

 vc4->hvs = ((void*)0);
}

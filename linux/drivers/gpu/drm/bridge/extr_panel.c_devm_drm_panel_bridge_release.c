
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_bridge {int dummy; } ;
struct device {int dummy; } ;


 int drm_panel_bridge_remove (struct drm_bridge*) ;

__attribute__((used)) static void devm_drm_panel_bridge_release(struct device *dev, void *res)
{
 struct drm_bridge **bridge = res;

 drm_panel_bridge_remove(*bridge);
}

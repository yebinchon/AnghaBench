
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_drm {TYPE_1__* hub; } ;
struct host1x_client {int parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;
struct TYPE_2__ {int base; } ;


 struct drm_device* dev_get_drvdata (int ) ;
 int drm_atomic_private_obj_fini (int *) ;

__attribute__((used)) static int tegra_display_hub_exit(struct host1x_client *client)
{
 struct drm_device *drm = dev_get_drvdata(client->parent);
 struct tegra_drm *tegra = drm->dev_private;

 drm_atomic_private_obj_fini(&tegra->hub->base);
 tegra->hub = ((void*)0);

 return 0;
}

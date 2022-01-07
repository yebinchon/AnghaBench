
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {struct tegra_display_hub* hub; } ;
struct tegra_display_hub_state {int base; } ;
struct tegra_display_hub {int base; } ;
struct host1x_client {int parent; } ;
struct drm_device {struct tegra_drm* dev_private; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct drm_device* dev_get_drvdata (int ) ;
 int drm_atomic_private_obj_init (struct drm_device*,int *,int *,int *) ;
 struct tegra_display_hub_state* kzalloc (int,int ) ;
 int tegra_display_hub_state_funcs ;
 struct tegra_display_hub* to_tegra_display_hub (struct host1x_client*) ;

__attribute__((used)) static int tegra_display_hub_init(struct host1x_client *client)
{
 struct tegra_display_hub *hub = to_tegra_display_hub(client);
 struct drm_device *drm = dev_get_drvdata(client->parent);
 struct tegra_drm *tegra = drm->dev_private;
 struct tegra_display_hub_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return -ENOMEM;

 drm_atomic_private_obj_init(drm, &hub->base, &state->base,
        &tegra_display_hub_state_funcs);

 tegra->hub = hub;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_dsi_state {int base; } ;
struct drm_connector {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_destroy_state (scalar_t__) ;
 int __drm_atomic_helper_connector_reset (struct drm_connector*,int *) ;
 int kfree (scalar_t__) ;
 struct tegra_dsi_state* kzalloc (int,int ) ;

__attribute__((used)) static void tegra_dsi_connector_reset(struct drm_connector *connector)
{
 struct tegra_dsi_state *state = kzalloc(sizeof(*state), GFP_KERNEL);

 if (!state)
  return;

 if (connector->state) {
  __drm_atomic_helper_connector_destroy_state(connector->state);
  kfree(connector->state);
 }

 __drm_atomic_helper_connector_reset(connector, &state->base);
}

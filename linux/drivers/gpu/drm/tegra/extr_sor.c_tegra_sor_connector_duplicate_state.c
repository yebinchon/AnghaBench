
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector_state {int dummy; } ;
struct tegra_sor_state {struct drm_connector_state base; } ;
struct drm_connector {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_connector_duplicate_state (struct drm_connector*,struct drm_connector_state*) ;
 struct tegra_sor_state* kmemdup (struct tegra_sor_state*,int,int ) ;
 struct tegra_sor_state* to_sor_state (int ) ;

__attribute__((used)) static struct drm_connector_state *
tegra_sor_connector_duplicate_state(struct drm_connector *connector)
{
 struct tegra_sor_state *state = to_sor_state(connector->state);
 struct tegra_sor_state *copy;

 copy = kmemdup(state, sizeof(*state), GFP_KERNEL);
 if (!copy)
  return ((void*)0);

 __drm_atomic_helper_connector_duplicate_state(connector, &copy->base);

 return &copy->base;
}

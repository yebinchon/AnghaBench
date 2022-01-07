
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct intel_crtc_state {int dummy; } ;
struct drm_connector_state {int dummy; } ;


 int intel_panel_disable_backlight (struct drm_connector_state const*) ;

__attribute__((used)) static void pch_disable_lvds(struct intel_encoder *encoder,
        const struct intel_crtc_state *old_crtc_state,
        const struct drm_connector_state *old_conn_state)
{
 intel_panel_disable_backlight(old_conn_state);
}

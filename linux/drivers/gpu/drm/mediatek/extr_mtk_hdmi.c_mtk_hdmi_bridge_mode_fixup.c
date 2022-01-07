
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int dummy; } ;
struct drm_bridge {int dummy; } ;



__attribute__((used)) static bool mtk_hdmi_bridge_mode_fixup(struct drm_bridge *bridge,
           const struct drm_display_mode *mode,
           struct drm_display_mode *adjusted_mode)
{
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_sdvo {int ddc; } ;
struct TYPE_3__ {int * sdvo_lvds_vbt_mode; } ;
struct drm_i915_private {TYPE_1__ vbt; } ;
struct drm_display_mode {int type; } ;
struct TYPE_4__ {int id; } ;
struct drm_connector {int dev; int name; TYPE_2__ base; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int DRM_MODE_TYPE_DRIVER ;
 int DRM_MODE_TYPE_PREFERRED ;
 struct drm_display_mode* drm_mode_duplicate (int ,int *) ;
 int drm_mode_probed_add (struct drm_connector*,struct drm_display_mode*) ;
 struct intel_sdvo* intel_attached_sdvo (struct drm_connector*) ;
 int intel_ddc_get_modes (struct drm_connector*,int *) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_sdvo_get_lvds_modes(struct drm_connector *connector)
{
 struct intel_sdvo *intel_sdvo = intel_attached_sdvo(connector);
 struct drm_i915_private *dev_priv = to_i915(connector->dev);
 struct drm_display_mode *newmode;

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n",
        connector->base.id, connector->name);





 if (dev_priv->vbt.sdvo_lvds_vbt_mode != ((void*)0)) {
  newmode = drm_mode_duplicate(connector->dev,
          dev_priv->vbt.sdvo_lvds_vbt_mode);
  if (newmode != ((void*)0)) {

   newmode->type = (DRM_MODE_TYPE_PREFERRED |
      DRM_MODE_TYPE_DRIVER);
   drm_mode_probed_add(connector, newmode);
  }
 }






 intel_ddc_get_modes(connector, &intel_sdvo->ddc);
}

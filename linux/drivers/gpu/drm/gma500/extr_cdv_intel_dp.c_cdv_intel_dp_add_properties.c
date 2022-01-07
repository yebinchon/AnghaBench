
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_connector {int dummy; } ;


 int cdv_intel_attach_broadcast_rgb_property (struct drm_connector*) ;
 int cdv_intel_attach_force_audio_property (struct drm_connector*) ;

__attribute__((used)) static void cdv_intel_dp_add_properties(struct drm_connector *connector)
{
 cdv_intel_attach_force_audio_property(connector);
 cdv_intel_attach_broadcast_rgb_property(connector);
}

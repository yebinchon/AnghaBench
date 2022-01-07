
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int dummy; } ;
struct drm_connector {int dummy; } ;


 int intel_attached_encoder (struct drm_connector*) ;
 struct intel_sdvo* to_sdvo (int ) ;

__attribute__((used)) static struct intel_sdvo *intel_attached_sdvo(struct drm_connector *connector)
{
 return to_sdvo(intel_attached_encoder(connector));
}

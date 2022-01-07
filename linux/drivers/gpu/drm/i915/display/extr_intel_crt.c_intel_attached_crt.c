
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crt {int dummy; } ;
struct drm_connector {int dummy; } ;


 int intel_attached_encoder (struct drm_connector*) ;
 struct intel_crt* intel_encoder_to_crt (int ) ;

__attribute__((used)) static struct intel_crt *intel_attached_crt(struct drm_connector *connector)
{
 return intel_encoder_to_crt(intel_attached_encoder(connector));
}

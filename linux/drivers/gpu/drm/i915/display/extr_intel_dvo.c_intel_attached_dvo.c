
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dvo {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct intel_dvo* enc_to_dvo (int ) ;
 int intel_attached_encoder (struct drm_connector*) ;

__attribute__((used)) static struct intel_dvo *intel_attached_dvo(struct drm_connector *connector)
{
 return enc_to_dvo(intel_attached_encoder(connector));
}

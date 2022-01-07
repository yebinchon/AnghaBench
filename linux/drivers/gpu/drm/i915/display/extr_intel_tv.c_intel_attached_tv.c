
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_tv {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct intel_tv* enc_to_tv (int ) ;
 int intel_attached_encoder (struct drm_connector*) ;

__attribute__((used)) static struct intel_tv *intel_attached_tv(struct drm_connector *connector)
{
 return enc_to_tv(intel_attached_encoder(connector));
}

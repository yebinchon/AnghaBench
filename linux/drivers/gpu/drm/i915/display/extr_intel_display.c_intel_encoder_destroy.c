
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct intel_encoder*) ;
 struct intel_encoder* to_intel_encoder (struct drm_encoder*) ;

void intel_encoder_destroy(struct drm_encoder *encoder)
{
 struct intel_encoder *intel_encoder = to_intel_encoder(encoder);

 drm_encoder_cleanup(encoder);
 kfree(intel_encoder);
}

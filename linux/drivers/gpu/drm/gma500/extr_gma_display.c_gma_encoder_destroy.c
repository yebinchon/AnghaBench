
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gma_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct gma_encoder*) ;
 struct gma_encoder* to_gma_encoder (struct drm_encoder*) ;

void gma_encoder_destroy(struct drm_encoder *encoder)
{
 struct gma_encoder *intel_encoder = to_gma_encoder(encoder);

 drm_encoder_cleanup(encoder);
 kfree(intel_encoder);
}

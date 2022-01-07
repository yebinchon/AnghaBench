
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int enc_to_dig_port (struct drm_encoder*) ;
 int intel_dp_encoder_flush_work (struct drm_encoder*) ;
 int kfree (int ) ;

__attribute__((used)) static void intel_dp_encoder_destroy(struct drm_encoder *encoder)
{
 intel_dp_encoder_flush_work(encoder);

 drm_encoder_cleanup(encoder);
 kfree(enc_to_dig_port(encoder));
}

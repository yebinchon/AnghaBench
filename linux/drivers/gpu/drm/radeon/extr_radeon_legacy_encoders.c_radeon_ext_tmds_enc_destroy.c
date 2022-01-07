
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {struct radeon_encoder* enc_priv; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 int kfree (struct radeon_encoder*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_ext_tmds_enc_destroy(struct drm_encoder *encoder)
{
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);

 kfree(radeon_encoder->enc_priv);
 drm_encoder_cleanup(encoder);
 kfree(radeon_encoder);
}

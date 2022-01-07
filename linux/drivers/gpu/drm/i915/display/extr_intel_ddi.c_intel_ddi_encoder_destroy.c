
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_digital_port {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 struct intel_digital_port* enc_to_dig_port (struct drm_encoder*) ;
 int intel_dp_encoder_flush_work (struct drm_encoder*) ;
 int kfree (struct intel_digital_port*) ;

__attribute__((used)) static void intel_ddi_encoder_destroy(struct drm_encoder *encoder)
{
 struct intel_digital_port *dig_port = enc_to_dig_port(encoder);

 intel_dp_encoder_flush_work(encoder);

 drm_encoder_cleanup(encoder);
 kfree(dig_port);
}

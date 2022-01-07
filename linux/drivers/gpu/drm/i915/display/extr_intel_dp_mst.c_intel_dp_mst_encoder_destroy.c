
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp_mst_encoder {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int drm_encoder_cleanup (struct drm_encoder*) ;
 struct intel_dp_mst_encoder* enc_to_mst (struct drm_encoder*) ;
 int kfree (struct intel_dp_mst_encoder*) ;

__attribute__((used)) static void intel_dp_mst_encoder_destroy(struct drm_encoder *encoder)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);

 drm_encoder_cleanup(encoder);
 kfree(intel_mst);
}

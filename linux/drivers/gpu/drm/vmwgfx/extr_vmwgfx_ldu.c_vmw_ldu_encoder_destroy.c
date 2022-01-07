
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int vmw_encoder_to_ldu (struct drm_encoder*) ;
 int vmw_ldu_destroy (int ) ;

__attribute__((used)) static void vmw_ldu_encoder_destroy(struct drm_encoder *encoder)
{
 vmw_ldu_destroy(vmw_encoder_to_ldu(encoder));
}

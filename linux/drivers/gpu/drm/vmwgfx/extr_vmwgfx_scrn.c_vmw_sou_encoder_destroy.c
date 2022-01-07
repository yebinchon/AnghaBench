
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_encoder {int dummy; } ;


 int vmw_encoder_to_sou (struct drm_encoder*) ;
 int vmw_sou_destroy (int ) ;

__attribute__((used)) static void vmw_sou_encoder_destroy(struct drm_encoder *encoder)
{
 vmw_sou_destroy(vmw_encoder_to_sou(encoder));
}

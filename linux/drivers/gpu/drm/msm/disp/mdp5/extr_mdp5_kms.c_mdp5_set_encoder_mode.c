
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int mdp5_encoder_set_intf_mode (struct drm_encoder*,int) ;

__attribute__((used)) static void mdp5_set_encoder_mode(struct msm_kms *kms,
      struct drm_encoder *encoder,
      bool cmd_mode)
{
 mdp5_encoder_set_intf_mode(encoder, cmd_mode);
}

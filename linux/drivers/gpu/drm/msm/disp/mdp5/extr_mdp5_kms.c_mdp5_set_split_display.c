
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct drm_encoder {int dummy; } ;


 int mdp5_cmd_encoder_set_split_display (struct drm_encoder*,struct drm_encoder*) ;
 int mdp5_vid_encoder_set_split_display (struct drm_encoder*,struct drm_encoder*) ;

__attribute__((used)) static int mdp5_set_split_display(struct msm_kms *kms,
  struct drm_encoder *encoder,
  struct drm_encoder *slave_encoder,
  bool is_cmd_mode)
{
 if (is_cmd_mode)
  return mdp5_cmd_encoder_set_split_display(encoder,
       slave_encoder);
 else
  return mdp5_vid_encoder_set_split_display(encoder,
         slave_encoder);
}

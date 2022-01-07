
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct drm_encoder {int encoder_type; } ;





 long mdp4_dtv_round_pixclk (struct drm_encoder*,unsigned long) ;

__attribute__((used)) static long mdp4_round_pixclk(struct msm_kms *kms, unsigned long rate,
  struct drm_encoder *encoder)
{

 switch (encoder->encoder_type) {
 case 128:
  return mdp4_dtv_round_pixclk(encoder, rate);
 case 129:
 case 130:
 default:
  return rate;
 }
}

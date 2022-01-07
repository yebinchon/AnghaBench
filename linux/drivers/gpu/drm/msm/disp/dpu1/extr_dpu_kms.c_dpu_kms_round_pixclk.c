
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct drm_encoder {int dummy; } ;



__attribute__((used)) static long dpu_kms_round_pixclk(struct msm_kms *kms, unsigned long rate,
  struct drm_encoder *encoder)
{
 return rate;
}

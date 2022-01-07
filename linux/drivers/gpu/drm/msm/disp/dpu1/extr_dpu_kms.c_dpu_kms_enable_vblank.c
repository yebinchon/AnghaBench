
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_kms {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int dpu_crtc_vblank (struct drm_crtc*,int) ;

__attribute__((used)) static int dpu_kms_enable_vblank(struct msm_kms *kms, struct drm_crtc *crtc)
{
 return dpu_crtc_vblank(crtc, 1);
}

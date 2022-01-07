
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline {int dummy; } ;
struct komeda_kms_dev {int n_crtcs; struct komeda_crtc* crtcs; } ;
struct komeda_crtc {int slave_planes; struct komeda_pipeline* slave; } ;
struct drm_plane {int dummy; } ;


 int BIT (int ) ;
 int drm_plane_index (struct drm_plane*) ;

__attribute__((used)) static void
komeda_set_crtc_plane_mask(struct komeda_kms_dev *kms,
      struct komeda_pipeline *pipe,
      struct drm_plane *plane)
{
 struct komeda_crtc *kcrtc;
 int i;

 for (i = 0; i < kms->n_crtcs; i++) {
  kcrtc = &kms->crtcs[i];

  if (pipe == kcrtc->slave)
   kcrtc->slave_planes |= BIT(drm_plane_index(plane));
 }
}

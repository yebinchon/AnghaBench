
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct msm_kms {int aspace; } ;
struct msm_drm_private {struct msm_kms* kms; } ;
struct drm_plane_state {int fb; } ;
struct drm_plane {TYPE_1__* dev; } ;
struct TYPE_2__ {struct msm_drm_private* dev_private; } ;


 int drm_gem_fb_prepare_fb (struct drm_plane*,struct drm_plane_state*) ;
 int msm_framebuffer_prepare (int ,int ) ;

int msm_atomic_prepare_fb(struct drm_plane *plane,
     struct drm_plane_state *new_state)
{
 struct msm_drm_private *priv = plane->dev->dev_private;
 struct msm_kms *kms = priv->kms;

 if (!new_state->fb)
  return 0;

 drm_gem_fb_prepare_fb(plane, new_state);

 return msm_framebuffer_prepare(new_state->fb, kms->aspace);
}

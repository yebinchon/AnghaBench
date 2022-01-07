
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_framebuffer {int nvbo; } ;
struct nouveau_drm {int dummy; } ;
struct drm_plane_state {int fb; } ;
struct drm_plane {int name; int dev; } ;


 int NV_ATOMIC (struct nouveau_drm*,char*,int ,int ) ;
 int nouveau_bo_unpin (int ) ;
 struct nouveau_drm* nouveau_drm (int ) ;
 struct nouveau_framebuffer* nouveau_framebuffer (int ) ;

__attribute__((used)) static void
nv50_wndw_cleanup_fb(struct drm_plane *plane, struct drm_plane_state *old_state)
{
 struct nouveau_framebuffer *fb = nouveau_framebuffer(old_state->fb);
 struct nouveau_drm *drm = nouveau_drm(plane->dev);

 NV_ATOMIC(drm, "%s cleanup: %p\n", plane->name, old_state->fb);
 if (!old_state->fb)
  return;

 nouveau_bo_unpin(fb->nvbo);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm {scalar_t__ hub; } ;
struct drm_device {struct tegra_drm* dev_private; } ;
struct drm_atomic_state {struct drm_device* dev; } ;


 int drm_atomic_helper_cleanup_planes (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_hw_done (struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_disables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_modeset_enables (struct drm_device*,struct drm_atomic_state*) ;
 int drm_atomic_helper_commit_planes (struct drm_device*,struct drm_atomic_state*,int ) ;
 int drm_atomic_helper_commit_tail_rpm (struct drm_atomic_state*) ;
 int drm_atomic_helper_wait_for_vblanks (struct drm_device*,struct drm_atomic_state*) ;
 int tegra_display_hub_atomic_commit (struct drm_device*,struct drm_atomic_state*) ;

__attribute__((used)) static void tegra_atomic_commit_tail(struct drm_atomic_state *old_state)
{
 struct drm_device *drm = old_state->dev;
 struct tegra_drm *tegra = drm->dev_private;

 if (tegra->hub) {
  drm_atomic_helper_commit_modeset_disables(drm, old_state);
  tegra_display_hub_atomic_commit(drm, old_state);
  drm_atomic_helper_commit_planes(drm, old_state, 0);
  drm_atomic_helper_commit_modeset_enables(drm, old_state);
  drm_atomic_helper_commit_hw_done(old_state);
  drm_atomic_helper_wait_for_vblanks(drm, old_state);
  drm_atomic_helper_cleanup_planes(drm, old_state);
 } else {
  drm_atomic_helper_commit_tail_rpm(old_state);
 }
}

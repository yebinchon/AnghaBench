
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc_state {scalar_t__ active; scalar_t__ event; scalar_t__ mode_blob; scalar_t__ enable; struct drm_crtc* crtc; } ;
struct TYPE_2__ {int id; } ;
struct drm_crtc {int name; TYPE_1__ base; int dev; } ;


 int DRIVER_ATOMIC ;
 int DRM_DEBUG_ATOMIC (char*,int ,int ) ;
 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 scalar_t__ drm_core_check_feature (int ,int ) ;

__attribute__((used)) static int drm_atomic_crtc_check(const struct drm_crtc_state *old_crtc_state,
     const struct drm_crtc_state *new_crtc_state)
{
 struct drm_crtc *crtc = new_crtc_state->crtc;
 if (new_crtc_state->active && !new_crtc_state->enable) {
  DRM_DEBUG_ATOMIC("[CRTC:%d:%s] active without enabled\n",
     crtc->base.id, crtc->name);
  return -EINVAL;
 }




 if (drm_core_check_feature(crtc->dev, DRIVER_ATOMIC) &&
     WARN_ON(new_crtc_state->enable && !new_crtc_state->mode_blob)) {
  DRM_DEBUG_ATOMIC("[CRTC:%d:%s] enabled without mode blob\n",
     crtc->base.id, crtc->name);
  return -EINVAL;
 }

 if (drm_core_check_feature(crtc->dev, DRIVER_ATOMIC) &&
     WARN_ON(!new_crtc_state->enable && new_crtc_state->mode_blob)) {
  DRM_DEBUG_ATOMIC("[CRTC:%d:%s] disabled with mode blob\n",
     crtc->base.id, crtc->name);
  return -EINVAL;
 }
 if (new_crtc_state->event &&
     !new_crtc_state->active && !old_crtc_state->active) {
  DRM_DEBUG_ATOMIC("[CRTC:%d:%s] requesting event but off\n",
     crtc->base.id, crtc->name);
  return -EINVAL;
 }

 return 0;
}

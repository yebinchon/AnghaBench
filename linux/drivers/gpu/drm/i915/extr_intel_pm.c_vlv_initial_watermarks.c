
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int intermediate; } ;
struct TYPE_11__ {TYPE_3__ vlv; } ;
struct TYPE_12__ {TYPE_7__* crtc; } ;
struct intel_crtc_state {TYPE_4__ wm; TYPE_5__ base; } ;
struct TYPE_8__ {int vlv; } ;
struct TYPE_9__ {TYPE_1__ active; } ;
struct intel_crtc {TYPE_2__ wm; } ;
struct intel_atomic_state {int dummy; } ;
struct TYPE_13__ {int wm_mutex; } ;
struct drm_i915_private {TYPE_6__ wm; } ;
struct TYPE_14__ {int dev; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (TYPE_7__*) ;
 int vlv_program_watermarks (struct drm_i915_private*) ;

__attribute__((used)) static void vlv_initial_watermarks(struct intel_atomic_state *state,
       struct intel_crtc_state *crtc_state)
{
 struct drm_i915_private *dev_priv = to_i915(crtc_state->base.crtc->dev);
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);

 mutex_lock(&dev_priv->wm.wm_mutex);
 crtc->wm.active.vlv = crtc_state->wm.vlv.intermediate;
 vlv_program_watermarks(dev_priv);
 mutex_unlock(&dev_priv->wm.wm_mutex);
}

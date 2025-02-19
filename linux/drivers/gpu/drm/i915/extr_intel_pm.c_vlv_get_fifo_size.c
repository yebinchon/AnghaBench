
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vlv_fifo_state {int* plane; } ;
struct TYPE_7__ {struct vlv_fifo_state fifo_state; } ;
struct TYPE_8__ {TYPE_3__ vlv; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {TYPE_4__ wm; TYPE_1__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DSPARB ;
 int DSPARB2 ;
 int DSPARB3 ;
 int I915_READ (int ) ;
 int MISSING_CASE (int) ;



 size_t PLANE_CURSOR ;
 size_t PLANE_PRIMARY ;
 size_t PLANE_SPRITE0 ;
 size_t PLANE_SPRITE1 ;
 int VLV_FIFO_START (int ,int ,int,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void vlv_get_fifo_size(struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct vlv_fifo_state *fifo_state = &crtc_state->wm.vlv.fifo_state;
 enum pipe pipe = crtc->pipe;
 int sprite0_start, sprite1_start;

 switch (pipe) {
  u32 dsparb, dsparb2, dsparb3;
 case 130:
  dsparb = I915_READ(DSPARB);
  dsparb2 = I915_READ(DSPARB2);
  sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 0, 0);
  sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 8, 4);
  break;
 case 129:
  dsparb = I915_READ(DSPARB);
  dsparb2 = I915_READ(DSPARB2);
  sprite0_start = VLV_FIFO_START(dsparb, dsparb2, 16, 8);
  sprite1_start = VLV_FIFO_START(dsparb, dsparb2, 24, 12);
  break;
 case 128:
  dsparb2 = I915_READ(DSPARB2);
  dsparb3 = I915_READ(DSPARB3);
  sprite0_start = VLV_FIFO_START(dsparb3, dsparb2, 0, 16);
  sprite1_start = VLV_FIFO_START(dsparb3, dsparb2, 8, 20);
  break;
 default:
  MISSING_CASE(pipe);
  return;
 }

 fifo_state->plane[PLANE_PRIMARY] = sprite0_start;
 fifo_state->plane[PLANE_SPRITE0] = sprite1_start - sprite0_start;
 fifo_state->plane[PLANE_SPRITE1] = 511 - sprite1_start;
 fifo_state->plane[PLANE_CURSOR] = 63;
}

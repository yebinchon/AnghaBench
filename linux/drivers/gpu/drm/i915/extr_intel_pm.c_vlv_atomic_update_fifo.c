
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
struct intel_uncore {int lock; } ;
struct TYPE_7__ {struct vlv_fifo_state fifo_state; } ;
struct TYPE_8__ {TYPE_3__ vlv; } ;
struct TYPE_5__ {int crtc; } ;
struct intel_crtc_state {int fifo_changed; TYPE_4__ wm; TYPE_1__ base; } ;
struct TYPE_6__ {int dev; } ;
struct intel_crtc {int pipe; TYPE_2__ base; } ;
struct intel_atomic_state {int dummy; } ;
struct drm_i915_private {struct intel_uncore uncore; } ;


 int DSPARB ;
 int DSPARB2 ;
 int DSPARB3 ;



 size_t PLANE_CURSOR ;
 size_t PLANE_PRIMARY ;
 size_t PLANE_SPRITE0 ;
 size_t PLANE_SPRITE1 ;
 int SPRITEA ;
 int SPRITEA_HI ;
 int SPRITEB ;
 int SPRITEB_HI ;
 int SPRITEC ;
 int SPRITEC_HI ;
 int SPRITED ;
 int SPRITED_HI ;
 int SPRITEE ;
 int SPRITEE_HI ;
 int SPRITEF ;
 int SPRITEF_HI ;
 int VLV_FIFO (int ,int) ;
 int WARN_ON (int) ;
 int intel_uncore_posting_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_read_fw (struct intel_uncore*,int ) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 int trace_vlv_fifo_size (struct intel_crtc*,int,int,int) ;

__attribute__((used)) static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
       struct intel_crtc_state *crtc_state)
{
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 struct intel_uncore *uncore = &dev_priv->uncore;
 const struct vlv_fifo_state *fifo_state =
  &crtc_state->wm.vlv.fifo_state;
 int sprite0_start, sprite1_start, fifo_size;

 if (!crtc_state->fifo_changed)
  return;

 sprite0_start = fifo_state->plane[PLANE_PRIMARY];
 sprite1_start = fifo_state->plane[PLANE_SPRITE0] + sprite0_start;
 fifo_size = fifo_state->plane[PLANE_SPRITE1] + sprite1_start;

 WARN_ON(fifo_state->plane[PLANE_CURSOR] != 63);
 WARN_ON(fifo_size != 511);

 trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
 spin_lock(&uncore->lock);

 switch (crtc->pipe) {
  u32 dsparb, dsparb2, dsparb3;
 case 130:
  dsparb = intel_uncore_read_fw(uncore, DSPARB);
  dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);

  dsparb &= ~(VLV_FIFO(SPRITEA, 0xff) |
       VLV_FIFO(SPRITEB, 0xff));
  dsparb |= (VLV_FIFO(SPRITEA, sprite0_start) |
      VLV_FIFO(SPRITEB, sprite1_start));

  dsparb2 &= ~(VLV_FIFO(SPRITEA_HI, 0x1) |
        VLV_FIFO(SPRITEB_HI, 0x1));
  dsparb2 |= (VLV_FIFO(SPRITEA_HI, sprite0_start >> 8) |
      VLV_FIFO(SPRITEB_HI, sprite1_start >> 8));

  intel_uncore_write_fw(uncore, DSPARB, dsparb);
  intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
  break;
 case 129:
  dsparb = intel_uncore_read_fw(uncore, DSPARB);
  dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);

  dsparb &= ~(VLV_FIFO(SPRITEC, 0xff) |
       VLV_FIFO(SPRITED, 0xff));
  dsparb |= (VLV_FIFO(SPRITEC, sprite0_start) |
      VLV_FIFO(SPRITED, sprite1_start));

  dsparb2 &= ~(VLV_FIFO(SPRITEC_HI, 0xff) |
        VLV_FIFO(SPRITED_HI, 0xff));
  dsparb2 |= (VLV_FIFO(SPRITEC_HI, sprite0_start >> 8) |
      VLV_FIFO(SPRITED_HI, sprite1_start >> 8));

  intel_uncore_write_fw(uncore, DSPARB, dsparb);
  intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
  break;
 case 128:
  dsparb3 = intel_uncore_read_fw(uncore, DSPARB3);
  dsparb2 = intel_uncore_read_fw(uncore, DSPARB2);

  dsparb3 &= ~(VLV_FIFO(SPRITEE, 0xff) |
        VLV_FIFO(SPRITEF, 0xff));
  dsparb3 |= (VLV_FIFO(SPRITEE, sprite0_start) |
       VLV_FIFO(SPRITEF, sprite1_start));

  dsparb2 &= ~(VLV_FIFO(SPRITEE_HI, 0xff) |
        VLV_FIFO(SPRITEF_HI, 0xff));
  dsparb2 |= (VLV_FIFO(SPRITEE_HI, sprite0_start >> 8) |
      VLV_FIFO(SPRITEF_HI, sprite1_start >> 8));

  intel_uncore_write_fw(uncore, DSPARB3, dsparb3);
  intel_uncore_write_fw(uncore, DSPARB2, dsparb2);
  break;
 default:
  break;
 }

 intel_uncore_posting_read_fw(uncore, DSPARB);

 spin_unlock(&uncore->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int fence_y_offset; int i9xx_plane; } ;
struct TYPE_7__ {int stride; } ;
struct intel_fbc_reg_params {int cfb_size; TYPE_5__* vma; TYPE_3__ crtc; TYPE_2__ fb; } ;
struct TYPE_6__ {struct intel_fbc_reg_params params; } ;
struct drm_i915_private {TYPE_1__ fbc; } ;
struct TYPE_10__ {TYPE_4__* fence; } ;
struct TYPE_9__ {int id; } ;


 int FBC_CONTROL ;
 int FBC_CONTROL2 ;
 int FBC_CTL_C3_IDLE ;
 int FBC_CTL_CPU_FENCE ;
 int FBC_CTL_EN ;
 int FBC_CTL_FENCE_DBL ;
 int FBC_CTL_IDLE_IMM ;
 int FBC_CTL_INTERVAL_SHIFT ;
 int FBC_CTL_PERIODIC ;
 int FBC_CTL_PLANE (int ) ;
 int FBC_CTL_STRIDE_SHIFT ;
 int FBC_FENCE_OFF ;
 int FBC_LL_SIZE ;
 int FBC_TAG (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN (struct drm_i915_private*,int) ;
 scalar_t__ IS_I945GM (struct drm_i915_private*) ;

__attribute__((used)) static void i8xx_fbc_activate(struct drm_i915_private *dev_priv)
{
 struct intel_fbc_reg_params *params = &dev_priv->fbc.params;
 int cfb_pitch;
 int i;
 u32 fbc_ctl;


 cfb_pitch = params->cfb_size / FBC_LL_SIZE;
 if (params->fb.stride < cfb_pitch)
  cfb_pitch = params->fb.stride;


 if (IS_GEN(dev_priv, 2))
  cfb_pitch = (cfb_pitch / 32) - 1;
 else
  cfb_pitch = (cfb_pitch / 64) - 1;


 for (i = 0; i < (FBC_LL_SIZE / 32) + 1; i++)
  I915_WRITE(FBC_TAG(i), 0);

 if (IS_GEN(dev_priv, 4)) {
  u32 fbc_ctl2;


  fbc_ctl2 = FBC_CTL_FENCE_DBL | FBC_CTL_IDLE_IMM | FBC_CTL_CPU_FENCE;
  fbc_ctl2 |= FBC_CTL_PLANE(params->crtc.i9xx_plane);
  I915_WRITE(FBC_CONTROL2, fbc_ctl2);
  I915_WRITE(FBC_FENCE_OFF, params->crtc.fence_y_offset);
 }


 fbc_ctl = I915_READ(FBC_CONTROL);
 fbc_ctl &= 0x3fff << FBC_CTL_INTERVAL_SHIFT;
 fbc_ctl |= FBC_CTL_EN | FBC_CTL_PERIODIC;
 if (IS_I945GM(dev_priv))
  fbc_ctl |= FBC_CTL_C3_IDLE;
 fbc_ctl |= (cfb_pitch & 0xff) << FBC_CTL_STRIDE_SHIFT;
 fbc_ctl |= params->vma->fence->id;
 I915_WRITE(FBC_CONTROL, fbc_ctl);
}

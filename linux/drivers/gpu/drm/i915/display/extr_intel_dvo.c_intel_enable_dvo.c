
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct TYPE_9__ {TYPE_2__* dev_ops; int dvo_reg; } ;
struct intel_dvo {TYPE_4__ dev; } ;
struct TYPE_6__ {int adjusted_mode; int mode; } ;
struct intel_crtc_state {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef int i915_reg_t ;
struct TYPE_7__ {int (* dpms ) (TYPE_4__*,int) ;int (* mode_set ) (TYPE_4__*,int *,int *) ;} ;


 int DVO_ENABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 struct intel_dvo* enc_to_dvo (struct intel_encoder*) ;
 int stub1 (TYPE_4__*,int *,int *) ;
 int stub2 (TYPE_4__*,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_enable_dvo(struct intel_encoder *encoder,
        const struct intel_crtc_state *pipe_config,
        const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dvo *intel_dvo = enc_to_dvo(encoder);
 i915_reg_t dvo_reg = intel_dvo->dev.dvo_reg;
 u32 temp = I915_READ(dvo_reg);

 intel_dvo->dev.dev_ops->mode_set(&intel_dvo->dev,
      &pipe_config->base.mode,
      &pipe_config->base.adjusted_mode);

 I915_WRITE(dvo_reg, temp | DVO_ENABLE);
 I915_READ(dvo_reg);

 intel_dvo->dev.dev_ops->dpms(&intel_dvo->dev, 1);
}

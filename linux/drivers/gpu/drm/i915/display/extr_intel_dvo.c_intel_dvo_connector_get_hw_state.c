
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* dev_ops; int dvo_reg; } ;
struct intel_dvo {TYPE_2__ dev; } ;
struct TYPE_6__ {struct drm_device* dev; } ;
struct intel_connector {TYPE_3__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_4__ {int (* get_hw_state ) (TYPE_2__*) ;} ;


 int DVO_ENABLE ;
 int I915_READ (int ) ;
 struct intel_dvo* intel_attached_dvo (TYPE_3__*) ;
 int stub1 (TYPE_2__*) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static bool intel_dvo_connector_get_hw_state(struct intel_connector *connector)
{
 struct drm_device *dev = connector->base.dev;
 struct drm_i915_private *dev_priv = to_i915(dev);
 struct intel_dvo *intel_dvo = intel_attached_dvo(&connector->base);
 u32 tmp;

 tmp = I915_READ(intel_dvo->dev.dvo_reg);

 if (!(tmp & DVO_ENABLE))
  return 0;

 return intel_dvo->dev.dev_ops->get_hw_state(&intel_dvo->dev);
}

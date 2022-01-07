
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int dev; } ;
struct intel_connector {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int _vlv_get_backlight (struct drm_i915_private*,int) ;
 int intel_connector_get_pipe (struct intel_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static u32 vlv_get_backlight(struct intel_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
 enum pipe pipe = intel_connector_get_pipe(connector);

 return _vlv_get_backlight(dev_priv, pipe);
}

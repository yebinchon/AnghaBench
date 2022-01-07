
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_crtc {TYPE_1__* config; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int cpu_transcoder; } ;


 struct intel_crtc* intel_get_crtc_for_pipe (struct drm_i915_private*,int) ;

enum transcoder intel_pipe_to_cpu_transcoder(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 struct intel_crtc *crtc = intel_get_crtc_for_pipe(dev_priv, pipe);

 return crtc->config->cpu_transcoder;
}

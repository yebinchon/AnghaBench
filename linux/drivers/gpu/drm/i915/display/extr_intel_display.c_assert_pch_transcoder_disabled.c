
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int I915_READ (int ) ;
 int I915_STATE_WARN (int,char*,int ) ;
 int PCH_TRANSCONF (int) ;
 int TRANS_ENABLE ;
 int pipe_name (int) ;

void assert_pch_transcoder_disabled(struct drm_i915_private *dev_priv,
        enum pipe pipe)
{
 u32 val;
 bool enabled;

 val = I915_READ(PCH_TRANSCONF(pipe));
 enabled = !!(val & TRANS_ENABLE);
 I915_STATE_WARN(enabled,
      "transcoder assertion failed, should be off on pipe %c but is still active\n",
      pipe_name(pipe));
}

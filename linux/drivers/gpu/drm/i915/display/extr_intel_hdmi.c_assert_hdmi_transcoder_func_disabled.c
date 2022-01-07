
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int I915_READ (int ) ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_FUNC_ENABLE ;
 int WARN (int,char*) ;

__attribute__((used)) static void
assert_hdmi_transcoder_func_disabled(struct drm_i915_private *dev_priv,
         enum transcoder cpu_transcoder)
{
 WARN(I915_READ(TRANS_DDI_FUNC_CTL(cpu_transcoder)) &
      TRANS_DDI_FUNC_ENABLE,
      "HDMI transcoder function enabled, expecting disabled\n");
}

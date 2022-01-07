
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SDE_ERROR_CPT ;
 int SERR_INT ;
 int SERR_INT_TRANS_FIFO_UNDERRUN (int) ;
 int cpt_can_enable_serr_int (struct drm_device*) ;
 int ibx_disable_display_interrupt (struct drm_i915_private*,int ) ;
 int ibx_enable_display_interrupt (struct drm_i915_private*,int ) ;
 int pipe_name (int) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

__attribute__((used)) static void cpt_set_fifo_underrun_reporting(struct drm_device *dev,
         enum pipe pch_transcoder,
         bool enable, bool old)
{
 struct drm_i915_private *dev_priv = to_i915(dev);

 if (enable) {
  I915_WRITE(SERR_INT,
      SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder));

  if (!cpt_can_enable_serr_int(dev))
   return;

  ibx_enable_display_interrupt(dev_priv, SDE_ERROR_CPT);
 } else {
  ibx_disable_display_interrupt(dev_priv, SDE_ERROR_CPT);

  if (old && I915_READ(SERR_INT) &
      SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) {
   DRM_ERROR("uncleared pch fifo underrun on pch transcoder %c\n",
      pipe_name(pch_transcoder));
  }
 }
}

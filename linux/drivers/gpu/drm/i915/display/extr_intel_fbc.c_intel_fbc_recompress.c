
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int FBC_REND_NUKE ;
 int I915_WRITE (int ,int ) ;
 int MSG_FBC_REND_STATE ;
 int POSTING_READ (int ) ;

__attribute__((used)) static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
{
 I915_WRITE(MSG_FBC_REND_STATE, FBC_REND_NUKE);
 POSTING_READ(MSG_FBC_REND_STATE);
}

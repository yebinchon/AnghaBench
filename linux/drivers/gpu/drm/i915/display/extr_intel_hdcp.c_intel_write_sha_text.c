
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int ETIMEDOUT ;
 int HDCP_REP_CTL ;
 int HDCP_SHA1_READY ;
 int HDCP_SHA_TEXT ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;

__attribute__((used)) static int intel_write_sha_text(struct drm_i915_private *dev_priv, u32 sha_text)
{
 I915_WRITE(HDCP_SHA_TEXT, sha_text);
 if (intel_de_wait_for_set(dev_priv, HDCP_REP_CTL, HDCP_SHA1_READY, 1)) {
  DRM_ERROR("Timed out waiting for SHA1 ready\n");
  return -ETIMEDOUT;
 }
 return 0;
}

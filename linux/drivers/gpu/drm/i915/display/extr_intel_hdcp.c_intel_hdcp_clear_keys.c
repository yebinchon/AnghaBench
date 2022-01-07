
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int HDCP_CLEAR_KEYS_TRIGGER ;
 int HDCP_FUSE_DONE ;
 int HDCP_FUSE_ERROR ;
 int HDCP_FUSE_IN_PROGRESS ;
 int HDCP_KEY_CONF ;
 int HDCP_KEY_LOAD_DONE ;
 int HDCP_KEY_LOAD_STATUS ;
 int HDCP_KEY_STATUS ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void intel_hdcp_clear_keys(struct drm_i915_private *dev_priv)
{
 I915_WRITE(HDCP_KEY_CONF, HDCP_CLEAR_KEYS_TRIGGER);
 I915_WRITE(HDCP_KEY_STATUS, HDCP_KEY_LOAD_DONE | HDCP_KEY_LOAD_STATUS |
     HDCP_FUSE_IN_PROGRESS | HDCP_FUSE_ERROR | HDCP_FUSE_DONE);
}

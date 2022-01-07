
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int uncore; } ;


 int DRM_ERROR (char*,int) ;
 int ENXIO ;
 int HDCP_AKSV_SEND_TRIGGER ;
 int HDCP_KEY_CONF ;
 int HDCP_KEY_LOAD_DONE ;
 int HDCP_KEY_LOAD_STATUS ;
 int HDCP_KEY_LOAD_TRIGGER ;
 int HDCP_KEY_STATUS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int SKL_PCODE_LOAD_HDCP_KEYS ;
 int __intel_wait_for_register (int *,int ,int,int,int,int,int*) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,int) ;

__attribute__((used)) static int intel_hdcp_load_keys(struct drm_i915_private *dev_priv)
{
 int ret;
 u32 val;

 val = I915_READ(HDCP_KEY_STATUS);
 if ((val & HDCP_KEY_LOAD_DONE) && (val & HDCP_KEY_LOAD_STATUS))
  return 0;





 if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
  if (!(I915_READ(HDCP_KEY_STATUS) & HDCP_KEY_LOAD_DONE))
   return -ENXIO;
 if (IS_GEN9_BC(dev_priv)) {
  ret = sandybridge_pcode_write(dev_priv,
           SKL_PCODE_LOAD_HDCP_KEYS, 1);
  if (ret) {
   DRM_ERROR("Failed to initiate HDCP key load (%d)\n",
             ret);
   return ret;
  }
 } else {
  I915_WRITE(HDCP_KEY_CONF, HDCP_KEY_LOAD_TRIGGER);
 }


 ret = __intel_wait_for_register(&dev_priv->uncore, HDCP_KEY_STATUS,
     HDCP_KEY_LOAD_DONE, HDCP_KEY_LOAD_DONE,
     10, 1, &val);
 if (ret)
  return ret;
 else if (!(val & HDCP_KEY_LOAD_STATUS))
  return -ENXIO;


 I915_WRITE(HDCP_KEY_CONF, HDCP_AKSV_SEND_TRIGGER);

 return 0;
}

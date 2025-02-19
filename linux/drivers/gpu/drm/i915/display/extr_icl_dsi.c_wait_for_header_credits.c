
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int DRM_ERROR (char*) ;
 scalar_t__ MAX_HEADER_CREDIT ;
 scalar_t__ header_credits_available (struct drm_i915_private*,int) ;
 scalar_t__ wait_for_us (int,int) ;

__attribute__((used)) static void wait_for_header_credits(struct drm_i915_private *dev_priv,
        enum transcoder dsi_trans)
{
 if (wait_for_us(header_credits_available(dev_priv, dsi_trans) >=
   MAX_HEADER_CREDIT, 100))
  DRM_ERROR("DSI header credits not released\n");
}

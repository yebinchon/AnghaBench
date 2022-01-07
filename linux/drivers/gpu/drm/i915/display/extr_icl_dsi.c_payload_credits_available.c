
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int DSI_CMD_TXCTL (int) ;
 int FREE_PLOAD_CREDIT_MASK ;
 int FREE_PLOAD_CREDIT_SHIFT ;
 int I915_READ (int ) ;

__attribute__((used)) static inline int payload_credits_available(struct drm_i915_private *dev_priv,
         enum transcoder dsi_trans)
{
 return (I915_READ(DSI_CMD_TXCTL(dsi_trans)) & FREE_PLOAD_CREDIT_MASK)
  >> FREE_PLOAD_CREDIT_SHIFT;
}

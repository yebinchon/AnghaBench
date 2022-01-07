
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int VLV_PCBR ;
 unsigned long VLV_PCBR_ADDR_SHIFT ;
 int WARN_ON (int) ;

__attribute__((used)) static void cherryview_check_pctx(struct drm_i915_private *dev_priv)
{
 unsigned long pctx_addr = I915_READ(VLV_PCBR) & ~4095;

 WARN_ON((pctx_addr >> VLV_PCBR_ADDR_SHIFT) == 0);
}

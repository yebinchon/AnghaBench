
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long start; } ;
struct drm_i915_private {TYPE_3__* vlv_pctx; TYPE_1__ dsm; } ;
struct TYPE_6__ {TYPE_2__* stolen; } ;
struct TYPE_5__ {unsigned long start; } ;


 int I915_READ (int ) ;
 int VLV_PCBR ;
 int WARN_ON (int) ;

__attribute__((used)) static void valleyview_check_pctx(struct drm_i915_private *dev_priv)
{
 unsigned long pctx_addr = I915_READ(VLV_PCBR) & ~4095;

 WARN_ON(pctx_addr != dev_priv->dsm.start +
        dev_priv->vlv_pctx->stolen->start);
}

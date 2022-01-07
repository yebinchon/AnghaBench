
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int start; } ;
struct drm_i915_private {struct drm_i915_gem_object* vlv_pctx; TYPE_1__ dsm; } ;
struct drm_i915_gem_object {TYPE_2__* stolen; } ;
typedef int resource_size_t ;
struct TYPE_4__ {int start; } ;


 int DRM_DEBUG (char*) ;
 int DRM_DEBUG_DRIVER (char*,...) ;
 int GEM_BUG_ON (int ) ;
 int I915_GTT_OFFSET_NONE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int U32_MAX ;
 int VLV_PCBR ;
 struct drm_i915_gem_object* i915_gem_object_create_stolen (struct drm_i915_private*,int) ;
 struct drm_i915_gem_object* i915_gem_object_create_stolen_for_preallocated (struct drm_i915_private*,int,int ,int) ;
 int range_overflows_t (int ,int,int,int ) ;
 int u64 ;

__attribute__((used)) static void valleyview_setup_pctx(struct drm_i915_private *dev_priv)
{
 struct drm_i915_gem_object *pctx;
 resource_size_t pctx_paddr;
 resource_size_t pctx_size = 24*1024;
 u32 pcbr;

 pcbr = I915_READ(VLV_PCBR);
 if (pcbr) {

  resource_size_t pcbr_offset;

  pcbr_offset = (pcbr & (~4095)) - dev_priv->dsm.start;
  pctx = i915_gem_object_create_stolen_for_preallocated(dev_priv,
              pcbr_offset,
              I915_GTT_OFFSET_NONE,
              pctx_size);
  goto out;
 }

 DRM_DEBUG_DRIVER("BIOS didn't set up PCBR, fixing up\n");
 pctx = i915_gem_object_create_stolen(dev_priv, pctx_size);
 if (!pctx) {
  DRM_DEBUG("not enough stolen space for PCTX, disabling\n");
  goto out;
 }

 GEM_BUG_ON(range_overflows_t(u64,
         dev_priv->dsm.start,
         pctx->stolen->start,
         U32_MAX));
 pctx_paddr = dev_priv->dsm.start + pctx->stolen->start;
 I915_WRITE(VLV_PCBR, pctx_paddr);

out:
 DRM_DEBUG_DRIVER("PCBR: 0x%08x\n", I915_READ(VLV_PCBR));
 dev_priv->vlv_pctx = pctx;
}

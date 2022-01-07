
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drm_i915_private {int dummy; } ;
struct dram_dimm_info {int ranks; int width; int size; } ;


 int DRM_DEBUG_KMS (char*,int,char,int ,int ,int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 int cnl_get_dimm_ranks (int ) ;
 int cnl_get_dimm_size (int ) ;
 int cnl_get_dimm_width (int ) ;
 int skl_get_dimm_ranks (int ) ;
 int skl_get_dimm_size (int ) ;
 int skl_get_dimm_width (int ) ;
 int skl_is_16gb_dimm (struct dram_dimm_info*) ;
 int yesno (int ) ;

__attribute__((used)) static void
skl_dram_get_dimm_info(struct drm_i915_private *dev_priv,
         struct dram_dimm_info *dimm,
         int channel, char dimm_name, u16 val)
{
 if (INTEL_GEN(dev_priv) >= 10) {
  dimm->size = cnl_get_dimm_size(val);
  dimm->width = cnl_get_dimm_width(val);
  dimm->ranks = cnl_get_dimm_ranks(val);
 } else {
  dimm->size = skl_get_dimm_size(val);
  dimm->width = skl_get_dimm_width(val);
  dimm->ranks = skl_get_dimm_ranks(val);
 }

 DRM_DEBUG_KMS("CH%u DIMM %c size: %u GB, width: X%u, ranks: %u, 16Gb DIMMs: %s\n",
        channel, dimm_name, dimm->size, dimm->width, dimm->ranks,
        yesno(skl_is_16gb_dimm(dimm)));
}

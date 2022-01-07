
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sseu_dev_info {int slice_mask; int* subslice_mask; } ;
struct i915_wa_list {int dummy; } ;
struct drm_i915_private {int uncore; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;


 unsigned int ARRAY_SIZE (int*) ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_WARN (char*,int,int) ;
 int GEM_BUG_ON (int) ;
 int GEN10_L3BANK_MASK ;
 int GEN10_L3BANK_PAIR_COUNT ;
 int GEN10_MIRROR_FUSE3 ;
 int GEN11_MCR_SLICE (unsigned int) ;
 int GEN11_MCR_SLICE_MASK ;
 int GEN11_MCR_SUBSLICE (unsigned int) ;
 int GEN11_MCR_SUBSLICE_MASK ;
 int GEN8_MCR_SELECTOR ;
 int GEN8_MCR_SLICE (unsigned int) ;
 int GEN8_MCR_SLICE_MASK ;
 int GEN8_MCR_SUBSLICE (unsigned int) ;
 int GEN8_MCR_SUBSLICE_MASK ;
 int INTEL_GEN (struct drm_i915_private*) ;
 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 int WARN_ON (int) ;
 int fls (int) ;
 int intel_uncore_read (int *,int ) ;
 scalar_t__ is_power_of_2 (int) ;
 int wa_write_masked_or (struct i915_wa_list*,int ,int,int) ;

__attribute__((used)) static void
wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
{
 const struct sseu_dev_info *sseu = &RUNTIME_INFO(i915)->sseu;
 unsigned int slice, subslice;
 u32 l3_en, mcr, mcr_mask;

 GEM_BUG_ON(INTEL_GEN(i915) < 10);
 if (INTEL_GEN(i915) >= 10 && is_power_of_2(sseu->slice_mask)) {
  u32 l3_fuse =
   intel_uncore_read(&i915->uncore, GEN10_MIRROR_FUSE3) &
   GEN10_L3BANK_MASK;

  DRM_DEBUG_DRIVER("L3 fuse = %x\n", l3_fuse);
  l3_en = ~(l3_fuse << GEN10_L3BANK_PAIR_COUNT | l3_fuse);
 } else {
  l3_en = ~0;
 }

 slice = fls(sseu->slice_mask) - 1;
 GEM_BUG_ON(slice >= ARRAY_SIZE(sseu->subslice_mask));
 subslice = fls(l3_en & sseu->subslice_mask[slice]);
 if (!subslice) {
  DRM_WARN("No common index found between subslice mask %x and L3 bank mask %x!\n",
    sseu->subslice_mask[slice], l3_en);
  subslice = fls(l3_en);
  WARN_ON(!subslice);
 }
 subslice--;

 if (INTEL_GEN(i915) >= 11) {
  mcr = GEN11_MCR_SLICE(slice) | GEN11_MCR_SUBSLICE(subslice);
  mcr_mask = GEN11_MCR_SLICE_MASK | GEN11_MCR_SUBSLICE_MASK;
 } else {
  mcr = GEN8_MCR_SLICE(slice) | GEN8_MCR_SUBSLICE(subslice);
  mcr_mask = GEN8_MCR_SLICE_MASK | GEN8_MCR_SUBSLICE_MASK;
 }

 DRM_DEBUG_DRIVER("MCR slice/subslice = %x\n", mcr);

 wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
}

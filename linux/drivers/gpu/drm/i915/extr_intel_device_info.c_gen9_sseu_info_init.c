
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sseu_dev_info {int slice_mask; int max_slices; int max_subslices; int max_eus_per_subslice; int* subslice_mask; int* subslice_7eu; int eu_per_subslice; int has_slice_pg; int has_subslice_pg; int has_eu_pg; int min_eu_in_pool; int eu_total; } ;
struct intel_device_info {int has_pooled_eu; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (int ,int) ;
 int GEN8_F2_S_ENA_MASK ;
 int GEN8_F2_S_ENA_SHIFT ;
 int GEN8_FUSE2 ;
 int GEN9_EU_DISABLE (int) ;
 int GEN9_F2_SS_DIS_MASK ;
 int GEN9_F2_SS_DIS_SHIFT ;
 int I915_READ (int ) ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 scalar_t__ IS_SS_DISABLED (int) ;
 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 int compute_eu_total (struct sseu_dev_info*) ;
 int hweight8 (int) ;
 int intel_sseu_subslice_total (struct sseu_dev_info*) ;
 struct intel_device_info* mkwrite_device_info (struct drm_i915_private*) ;
 int sseu_set_eus (struct sseu_dev_info*,int,int,int) ;

__attribute__((used)) static void gen9_sseu_info_init(struct drm_i915_private *dev_priv)
{
 struct intel_device_info *info = mkwrite_device_info(dev_priv);
 struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
 int s, ss;
 u32 fuse2, eu_disable, subslice_mask;
 const u8 eu_mask = 0xff;

 fuse2 = I915_READ(GEN8_FUSE2);
 sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;


 sseu->max_slices = IS_GEN9_LP(dev_priv) ? 1 : 3;
 sseu->max_subslices = IS_GEN9_LP(dev_priv) ? 3 : 4;
 sseu->max_eus_per_subslice = 8;





 subslice_mask = (1 << sseu->max_subslices) - 1;
 subslice_mask &= ~((fuse2 & GEN9_F2_SS_DIS_MASK) >>
      GEN9_F2_SS_DIS_SHIFT);





 for (s = 0; s < sseu->max_slices; s++) {
  if (!(sseu->slice_mask & BIT(s)))

   continue;

  sseu->subslice_mask[s] = subslice_mask;

  eu_disable = I915_READ(GEN9_EU_DISABLE(s));
  for (ss = 0; ss < sseu->max_subslices; ss++) {
   int eu_per_ss;
   u8 eu_disabled_mask;

   if (!(sseu->subslice_mask[s] & BIT(ss)))

    continue;

   eu_disabled_mask = (eu_disable >> (ss * 8)) & eu_mask;

   sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);

   eu_per_ss = sseu->max_eus_per_subslice -
    hweight8(eu_disabled_mask);






   if (eu_per_ss == 7)
    sseu->subslice_7eu[s] |= BIT(ss);
  }
 }

 sseu->eu_total = compute_eu_total(sseu);
 sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
    DIV_ROUND_UP(sseu->eu_total,
          intel_sseu_subslice_total(sseu)) :
    0;
 sseu->has_slice_pg =
  !IS_GEN9_LP(dev_priv) && hweight8(sseu->slice_mask) > 1;
 sseu->has_subslice_pg =
  IS_GEN9_LP(dev_priv) && intel_sseu_subslice_total(sseu) > 1;
 sseu->has_eu_pg = sseu->eu_per_subslice > 2;

 if (IS_GEN9_LP(dev_priv)) {

  info->has_pooled_eu = hweight8(sseu->subslice_mask[0]) == 3;

  sseu->min_eu_in_pool = 0;
  if (info->has_pooled_eu) {
   if ((!(sseu->subslice_mask[0] & BIT(2))) || (!(sseu->subslice_mask[0] & BIT(0))))
    sseu->min_eu_in_pool = 3;
   else if ((!(sseu->subslice_mask[0] & BIT(1))))
    sseu->min_eu_in_pool = 6;
   else
    sseu->min_eu_in_pool = 9;
  }

 }
}

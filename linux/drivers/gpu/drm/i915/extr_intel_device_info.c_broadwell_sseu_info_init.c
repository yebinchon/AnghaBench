
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sseu_dev_info {int slice_mask; int max_slices; int max_subslices; int max_eus_per_subslice; int* subslice_mask; int* subslice_7eu; int has_slice_pg; scalar_t__ has_eu_pg; scalar_t__ has_subslice_pg; int eu_total; int eu_per_subslice; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;


 int BIT (int) ;
 int DIV_ROUND_UP (int ,scalar_t__) ;
 int GEN8_EU_DIS0_S0_MASK ;
 int GEN8_EU_DIS0_S1_SHIFT ;
 int GEN8_EU_DIS1_S1_MASK ;
 int GEN8_EU_DIS1_S2_SHIFT ;
 int GEN8_EU_DIS2_S2_MASK ;
 int GEN8_EU_DISABLE0 ;
 int GEN8_EU_DISABLE1 ;
 int GEN8_EU_DISABLE2 ;
 int GEN8_F2_SS_DIS_MASK ;
 int GEN8_F2_SS_DIS_SHIFT ;
 int GEN8_F2_S_ENA_MASK ;
 int GEN8_F2_S_ENA_SHIFT ;
 int GEN8_FUSE2 ;
 int GENMASK (int,int ) ;
 int I915_READ (int ) ;
 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 int compute_eu_total (struct sseu_dev_info*) ;
 int hweight8 (int) ;
 scalar_t__ intel_sseu_subslice_total (struct sseu_dev_info*) ;
 int sseu_set_eus (struct sseu_dev_info*,int,int,int) ;

__attribute__((used)) static void broadwell_sseu_info_init(struct drm_i915_private *dev_priv)
{
 struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
 int s, ss;
 u32 fuse2, subslice_mask, eu_disable[3];

 fuse2 = I915_READ(GEN8_FUSE2);
 sseu->slice_mask = (fuse2 & GEN8_F2_S_ENA_MASK) >> GEN8_F2_S_ENA_SHIFT;
 sseu->max_slices = 3;
 sseu->max_subslices = 3;
 sseu->max_eus_per_subslice = 8;





 subslice_mask = GENMASK(sseu->max_subslices - 1, 0);
 subslice_mask &= ~((fuse2 & GEN8_F2_SS_DIS_MASK) >>
      GEN8_F2_SS_DIS_SHIFT);

 eu_disable[0] = I915_READ(GEN8_EU_DISABLE0) & GEN8_EU_DIS0_S0_MASK;
 eu_disable[1] = (I915_READ(GEN8_EU_DISABLE0) >> GEN8_EU_DIS0_S1_SHIFT) |
   ((I915_READ(GEN8_EU_DISABLE1) & GEN8_EU_DIS1_S1_MASK) <<
    (32 - GEN8_EU_DIS0_S1_SHIFT));
 eu_disable[2] = (I915_READ(GEN8_EU_DISABLE1) >> GEN8_EU_DIS1_S2_SHIFT) |
   ((I915_READ(GEN8_EU_DISABLE2) & GEN8_EU_DIS2_S2_MASK) <<
    (32 - GEN8_EU_DIS1_S2_SHIFT));





 for (s = 0; s < sseu->max_slices; s++) {
  if (!(sseu->slice_mask & BIT(s)))

   continue;

  sseu->subslice_mask[s] = subslice_mask;

  for (ss = 0; ss < sseu->max_subslices; ss++) {
   u8 eu_disabled_mask;
   u32 n_disabled;

   if (!(sseu->subslice_mask[s] & BIT(ss)))

    continue;

   eu_disabled_mask =
    eu_disable[s] >> (ss * sseu->max_eus_per_subslice);

   sseu_set_eus(sseu, s, ss, ~eu_disabled_mask);

   n_disabled = hweight8(eu_disabled_mask);




   if (sseu->max_eus_per_subslice - n_disabled == 7)
    sseu->subslice_7eu[s] |= 1 << ss;
  }
 }

 sseu->eu_total = compute_eu_total(sseu);






 sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
    DIV_ROUND_UP(sseu->eu_total,
          intel_sseu_subslice_total(sseu)) :
    0;





 sseu->has_slice_pg = hweight8(sseu->slice_mask) > 1;
 sseu->has_subslice_pg = 0;
 sseu->has_eu_pg = 0;
}

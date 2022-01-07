
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sseu_dev_info {int max_slices; int max_subslices; int max_eus_per_subslice; int eu_total; int eu_per_subslice; int has_subslice_pg; int has_eu_pg; scalar_t__ has_slice_pg; int * subslice_mask; int slice_mask; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_2__ {struct sseu_dev_info sseu; } ;


 int BIT (int) ;
 int CHV_FGT_DISABLE_SS0 ;
 int CHV_FGT_DISABLE_SS1 ;
 int CHV_FGT_EU_DIS_SS0_R0_MASK ;
 int CHV_FGT_EU_DIS_SS0_R0_SHIFT ;
 int CHV_FGT_EU_DIS_SS0_R1_MASK ;
 int CHV_FGT_EU_DIS_SS0_R1_SHIFT ;
 int CHV_FGT_EU_DIS_SS1_R0_MASK ;
 int CHV_FGT_EU_DIS_SS1_R0_SHIFT ;
 int CHV_FGT_EU_DIS_SS1_R1_MASK ;
 int CHV_FGT_EU_DIS_SS1_R1_SHIFT ;
 int CHV_FUSE_GT ;
 int I915_READ (int ) ;
 TYPE_1__* RUNTIME_INFO (struct drm_i915_private*) ;
 int compute_eu_total (struct sseu_dev_info*) ;
 int intel_sseu_subslice_total (struct sseu_dev_info*) ;
 int sseu_set_eus (struct sseu_dev_info*,int ,int,int) ;

__attribute__((used)) static void cherryview_sseu_info_init(struct drm_i915_private *dev_priv)
{
 struct sseu_dev_info *sseu = &RUNTIME_INFO(dev_priv)->sseu;
 u32 fuse;

 fuse = I915_READ(CHV_FUSE_GT);

 sseu->slice_mask = BIT(0);
 sseu->max_slices = 1;
 sseu->max_subslices = 2;
 sseu->max_eus_per_subslice = 8;

 if (!(fuse & CHV_FGT_DISABLE_SS0)) {
  u8 disabled_mask =
   ((fuse & CHV_FGT_EU_DIS_SS0_R0_MASK) >>
    CHV_FGT_EU_DIS_SS0_R0_SHIFT) |
   (((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
     CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);

  sseu->subslice_mask[0] |= BIT(0);
  sseu_set_eus(sseu, 0, 0, ~disabled_mask);
 }

 if (!(fuse & CHV_FGT_DISABLE_SS1)) {
  u8 disabled_mask =
   ((fuse & CHV_FGT_EU_DIS_SS1_R0_MASK) >>
    CHV_FGT_EU_DIS_SS1_R0_SHIFT) |
   (((fuse & CHV_FGT_EU_DIS_SS1_R1_MASK) >>
     CHV_FGT_EU_DIS_SS1_R1_SHIFT) << 4);

  sseu->subslice_mask[0] |= BIT(1);
  sseu_set_eus(sseu, 0, 1, ~disabled_mask);
 }

 sseu->eu_total = compute_eu_total(sseu);





 sseu->eu_per_subslice = intel_sseu_subslice_total(sseu) ?
    sseu->eu_total /
     intel_sseu_subslice_total(sseu) :
    0;





 sseu->has_slice_pg = 0;
 sseu->has_subslice_pg = intel_sseu_subslice_total(sseu) > 1;
 sseu->has_eu_pg = (sseu->eu_per_subslice > 2);
}

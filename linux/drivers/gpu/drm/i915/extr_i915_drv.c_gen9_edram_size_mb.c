
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int const u32 ;
struct drm_i915_private {int dummy; } ;


 unsigned int const EDRAM_NUM_BANKS (unsigned int const) ;
 size_t EDRAM_SETS_IDX (unsigned int const) ;
 size_t EDRAM_WAYS_IDX (unsigned int const) ;

__attribute__((used)) static u32 gen9_edram_size_mb(struct drm_i915_private *dev_priv, u32 cap)
{
 const unsigned int ways[8] = { 4, 8, 12, 16, 16, 16, 16, 16 };
 const unsigned int sets[4] = { 1, 1, 2, 2 };

 return EDRAM_NUM_BANKS(cap) *
  ways[EDRAM_WAYS_IDX(cap)] *
  sets[EDRAM_SETS_IDX(cap)];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int dummy; } ;


 int HALF_SLICE_CHICKEN2 ;
 int MICRO_BP0_0 ;
 int NOA_WRITE ;
 int OA_PERFCNT1_LO ;
 int OA_PERFCNT2_HI ;
 int OA_PERFMATRIX_HI ;
 int OA_PERFMATRIX_LO ;
 scalar_t__ i915_mmio_reg_offset (int ) ;

__attribute__((used)) static bool gen7_is_valid_mux_addr(struct drm_i915_private *dev_priv, u32 addr)
{
 return addr == i915_mmio_reg_offset(HALF_SLICE_CHICKEN2) ||
  (addr >= i915_mmio_reg_offset(MICRO_BP0_0) &&
   addr <= i915_mmio_reg_offset(NOA_WRITE)) ||
  (addr >= i915_mmio_reg_offset(OA_PERFCNT1_LO) &&
   addr <= i915_mmio_reg_offset(OA_PERFCNT2_HI)) ||
  (addr >= i915_mmio_reg_offset(OA_PERFMATRIX_LO) &&
   addr <= i915_mmio_reg_offset(OA_PERFMATRIX_HI));
}

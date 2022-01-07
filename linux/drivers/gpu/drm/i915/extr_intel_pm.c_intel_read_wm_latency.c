
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct intel_uncore {int dummy; } ;
struct TYPE_2__ {scalar_t__ is_16gb_dimm; } ;
struct drm_i915_private {TYPE_1__ dram_info; struct intel_uncore uncore; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT ;
 scalar_t__ GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT ;
 scalar_t__ GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT ;
 scalar_t__ GEN9_MEM_LATENCY_LEVEL_MASK ;
 int GEN9_PCODE_READ_MEM_LATENCY ;
 scalar_t__ ILK_SRLT_MASK ;
 int INTEL_DEVID (struct drm_i915_private*) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int MCH_SSKPD ;
 int MISSING_CASE (int ) ;
 int MLTR_ILK ;
 scalar_t__ MLTR_WM1_SHIFT ;
 scalar_t__ MLTR_WM2_SHIFT ;
 scalar_t__ SSKPD_WM0_SHIFT ;
 scalar_t__ SSKPD_WM1_SHIFT ;
 scalar_t__ SSKPD_WM2_SHIFT ;
 scalar_t__ SSKPD_WM3_SHIFT ;
 scalar_t__ SSKPD_WM_MASK ;
 int ilk_wm_max_level (struct drm_i915_private*) ;
 scalar_t__ intel_uncore_read (struct intel_uncore*,int ) ;
 int intel_uncore_read64 (struct intel_uncore*,int ) ;
 int sandybridge_pcode_read (struct drm_i915_private*,int ,scalar_t__*,int *) ;

__attribute__((used)) static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
      u16 wm[8])
{
 struct intel_uncore *uncore = &dev_priv->uncore;

 if (INTEL_GEN(dev_priv) >= 9) {
  u32 val;
  int ret, i;
  int level, max_level = ilk_wm_max_level(dev_priv);


  val = 0;
  ret = sandybridge_pcode_read(dev_priv,
          GEN9_PCODE_READ_MEM_LATENCY,
          &val, ((void*)0));

  if (ret) {
   DRM_ERROR("SKL Mailbox read error = %d\n", ret);
   return;
  }

  wm[0] = val & GEN9_MEM_LATENCY_LEVEL_MASK;
  wm[1] = (val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
    GEN9_MEM_LATENCY_LEVEL_MASK;
  wm[2] = (val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
    GEN9_MEM_LATENCY_LEVEL_MASK;
  wm[3] = (val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
    GEN9_MEM_LATENCY_LEVEL_MASK;


  val = 1;
  ret = sandybridge_pcode_read(dev_priv,
          GEN9_PCODE_READ_MEM_LATENCY,
          &val, ((void*)0));
  if (ret) {
   DRM_ERROR("SKL Mailbox read error = %d\n", ret);
   return;
  }

  wm[4] = val & GEN9_MEM_LATENCY_LEVEL_MASK;
  wm[5] = (val >> GEN9_MEM_LATENCY_LEVEL_1_5_SHIFT) &
    GEN9_MEM_LATENCY_LEVEL_MASK;
  wm[6] = (val >> GEN9_MEM_LATENCY_LEVEL_2_6_SHIFT) &
    GEN9_MEM_LATENCY_LEVEL_MASK;
  wm[7] = (val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
    GEN9_MEM_LATENCY_LEVEL_MASK;






  for (level = 1; level <= max_level; level++) {
   if (wm[level] == 0) {
    for (i = level + 1; i <= max_level; i++)
     wm[i] = 0;
    break;
   }
  }
  if (wm[0] == 0) {
   wm[0] += 2;
   for (level = 1; level <= max_level; level++) {
    if (wm[level] == 0)
     break;
    wm[level] += 2;
   }
  }







  if (dev_priv->dram_info.is_16gb_dimm)
   wm[0] += 1;

 } else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
  u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);

  wm[0] = (sskpd >> 56) & 0xFF;
  if (wm[0] == 0)
   wm[0] = sskpd & 0xF;
  wm[1] = (sskpd >> 4) & 0xFF;
  wm[2] = (sskpd >> 12) & 0xFF;
  wm[3] = (sskpd >> 20) & 0x1FF;
  wm[4] = (sskpd >> 32) & 0x1FF;
 } else if (INTEL_GEN(dev_priv) >= 6) {
  u32 sskpd = intel_uncore_read(uncore, MCH_SSKPD);

  wm[0] = (sskpd >> SSKPD_WM0_SHIFT) & SSKPD_WM_MASK;
  wm[1] = (sskpd >> SSKPD_WM1_SHIFT) & SSKPD_WM_MASK;
  wm[2] = (sskpd >> SSKPD_WM2_SHIFT) & SSKPD_WM_MASK;
  wm[3] = (sskpd >> SSKPD_WM3_SHIFT) & SSKPD_WM_MASK;
 } else if (INTEL_GEN(dev_priv) >= 5) {
  u32 mltr = intel_uncore_read(uncore, MLTR_ILK);


  wm[0] = 7;
  wm[1] = (mltr >> MLTR_WM1_SHIFT) & ILK_SRLT_MASK;
  wm[2] = (mltr >> MLTR_WM2_SHIFT) & ILK_SRLT_MASK;
 } else {
  MISSING_CASE(INTEL_DEVID(dev_priv));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ilk_wm_values {scalar_t__ partitioning; int * wm_lp; int * wm_lp_spr; scalar_t__ enable_fbc_wm; int * wm_linetime; int * wm_pipe; } ;
struct TYPE_2__ {struct ilk_wm_values hw; } ;
struct drm_i915_private {TYPE_1__ wm; } ;


 int DISP_ARB_CTL ;
 int DISP_ARB_CTL2 ;
 int DISP_DATA_PARTITION_5_6 ;
 int DISP_FBC_WM_DIS ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ INTEL_DDB_PART_1_2 ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_BROADWELL (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 int PIPE_A ;
 int PIPE_B ;
 int PIPE_C ;
 int PIPE_WM_LINETIME (int ) ;
 int WM0_PIPEA_ILK ;
 int WM0_PIPEB_ILK ;
 int WM0_PIPEC_IVB ;
 int WM1S_LP_ILK ;
 int WM1_LP_ILK ;
 int WM2S_LP_IVB ;
 int WM2_LP_ILK ;
 int WM3S_LP_IVB ;
 int WM3_LP_ILK ;
 unsigned int WM_DIRTY_DDB ;
 unsigned int WM_DIRTY_FBC ;
 unsigned int WM_DIRTY_LINETIME (int ) ;
 unsigned int WM_DIRTY_LP (int) ;
 unsigned int WM_DIRTY_PIPE (int ) ;
 int WM_MISC ;
 int WM_MISC_DATA_PARTITION_5_6 ;
 int _ilk_disable_lp_wm (struct drm_i915_private*,unsigned int) ;
 unsigned int ilk_compute_wm_dirty (struct drm_i915_private*,struct ilk_wm_values*,struct ilk_wm_values*) ;

__attribute__((used)) static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
    struct ilk_wm_values *results)
{
 struct ilk_wm_values *previous = &dev_priv->wm.hw;
 unsigned int dirty;
 u32 val;

 dirty = ilk_compute_wm_dirty(dev_priv, previous, results);
 if (!dirty)
  return;

 _ilk_disable_lp_wm(dev_priv, dirty);

 if (dirty & WM_DIRTY_PIPE(PIPE_A))
  I915_WRITE(WM0_PIPEA_ILK, results->wm_pipe[0]);
 if (dirty & WM_DIRTY_PIPE(PIPE_B))
  I915_WRITE(WM0_PIPEB_ILK, results->wm_pipe[1]);
 if (dirty & WM_DIRTY_PIPE(PIPE_C))
  I915_WRITE(WM0_PIPEC_IVB, results->wm_pipe[2]);

 if (dirty & WM_DIRTY_LINETIME(PIPE_A))
  I915_WRITE(PIPE_WM_LINETIME(PIPE_A), results->wm_linetime[0]);
 if (dirty & WM_DIRTY_LINETIME(PIPE_B))
  I915_WRITE(PIPE_WM_LINETIME(PIPE_B), results->wm_linetime[1]);
 if (dirty & WM_DIRTY_LINETIME(PIPE_C))
  I915_WRITE(PIPE_WM_LINETIME(PIPE_C), results->wm_linetime[2]);

 if (dirty & WM_DIRTY_DDB) {
  if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
   val = I915_READ(WM_MISC);
   if (results->partitioning == INTEL_DDB_PART_1_2)
    val &= ~WM_MISC_DATA_PARTITION_5_6;
   else
    val |= WM_MISC_DATA_PARTITION_5_6;
   I915_WRITE(WM_MISC, val);
  } else {
   val = I915_READ(DISP_ARB_CTL2);
   if (results->partitioning == INTEL_DDB_PART_1_2)
    val &= ~DISP_DATA_PARTITION_5_6;
   else
    val |= DISP_DATA_PARTITION_5_6;
   I915_WRITE(DISP_ARB_CTL2, val);
  }
 }

 if (dirty & WM_DIRTY_FBC) {
  val = I915_READ(DISP_ARB_CTL);
  if (results->enable_fbc_wm)
   val &= ~DISP_FBC_WM_DIS;
  else
   val |= DISP_FBC_WM_DIS;
  I915_WRITE(DISP_ARB_CTL, val);
 }

 if (dirty & WM_DIRTY_LP(1) &&
     previous->wm_lp_spr[0] != results->wm_lp_spr[0])
  I915_WRITE(WM1S_LP_ILK, results->wm_lp_spr[0]);

 if (INTEL_GEN(dev_priv) >= 7) {
  if (dirty & WM_DIRTY_LP(2) && previous->wm_lp_spr[1] != results->wm_lp_spr[1])
   I915_WRITE(WM2S_LP_IVB, results->wm_lp_spr[1]);
  if (dirty & WM_DIRTY_LP(3) && previous->wm_lp_spr[2] != results->wm_lp_spr[2])
   I915_WRITE(WM3S_LP_IVB, results->wm_lp_spr[2]);
 }

 if (dirty & WM_DIRTY_LP(1) && previous->wm_lp[0] != results->wm_lp[0])
  I915_WRITE(WM1_LP_ILK, results->wm_lp[0]);
 if (dirty & WM_DIRTY_LP(2) && previous->wm_lp[1] != results->wm_lp[1])
  I915_WRITE(WM2_LP_ILK, results->wm_lp[1]);
 if (dirty & WM_DIRTY_LP(3) && previous->wm_lp[2] != results->wm_lp[2])
  I915_WRITE(WM3_LP_ILK, results->wm_lp[2]);

 dev_priv->wm.hw = *results;
}

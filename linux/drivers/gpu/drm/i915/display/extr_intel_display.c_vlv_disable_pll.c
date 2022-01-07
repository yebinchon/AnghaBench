
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_INTEGRATED_CRI_CLK_VLV ;
 int DPLL_INTEGRATED_REF_CLK_VLV ;
 int DPLL_REF_CLK_ENABLE_VLV ;
 int DPLL_VGA_MODE_DIS ;
 int I915_WRITE (int ,int) ;
 int PIPE_A ;
 int POSTING_READ (int ) ;
 int assert_pipe_disabled (struct drm_i915_private*,int) ;

__attribute__((used)) static void vlv_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 u32 val;


 assert_pipe_disabled(dev_priv, pipe);

 val = DPLL_INTEGRATED_REF_CLK_VLV |
  DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
 if (pipe != PIPE_A)
  val |= DPLL_INTEGRATED_CRI_CLK_VLV;

 I915_WRITE(DPLL(pipe), val);
 POSTING_READ(DPLL(pipe));
}

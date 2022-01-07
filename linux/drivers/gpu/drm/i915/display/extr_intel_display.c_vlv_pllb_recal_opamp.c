
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int VLV_PLL_DW9 (int) ;
 int VLV_REF_DW13 ;
 int vlv_dpio_read (struct drm_i915_private*,int,int ) ;
 int vlv_dpio_write (struct drm_i915_private*,int,int ,int) ;

__attribute__((used)) static void vlv_pllb_recal_opamp(struct drm_i915_private *dev_priv, enum pipe
  pipe)
{
 u32 reg_val;





 reg_val = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
 reg_val &= 0xffffff00;
 reg_val |= 0x00000030;
 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);

 reg_val = vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
 reg_val &= 0x00ffffff;
 reg_val |= 0x8c000000;
 vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);

 reg_val = vlv_dpio_read(dev_priv, pipe, VLV_PLL_DW9(1));
 reg_val &= 0xffffff00;
 vlv_dpio_write(dev_priv, pipe, VLV_PLL_DW9(1), reg_val);

 reg_val = vlv_dpio_read(dev_priv, pipe, VLV_REF_DW13);
 reg_val &= 0x00ffffff;
 reg_val |= 0xb0000000;
 vlv_dpio_write(dev_priv, pipe, VLV_REF_DW13, reg_val);
}

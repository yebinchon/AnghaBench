
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int BALANCE_LEG_DISABLE (int) ;
 int BALANCE_LEG_MASK (int) ;
 int BALANCE_LEG_SHIFT (int) ;
 int DISPIO_CR_TX_BMU_CR0 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void _skl_ddi_set_iboost(struct drm_i915_private *dev_priv,
    enum port port, u8 iboost)
{
 u32 tmp;

 tmp = I915_READ(DISPIO_CR_TX_BMU_CR0);
 tmp &= ~(BALANCE_LEG_MASK(port) | BALANCE_LEG_DISABLE(port));
 if (iboost)
  tmp |= iboost << BALANCE_LEG_SHIFT(port);
 else
  tmp |= BALANCE_LEG_DISABLE(port);
 I915_WRITE(DISPIO_CR_TX_BMU_CR0, tmp);
}

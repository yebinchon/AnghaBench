
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int DSP_MAXFIFO_PM5_ENABLE ;
 int PUNIT_REG_DSPSSPM ;
 int vlv_punit_get (struct drm_i915_private*) ;
 int vlv_punit_put (struct drm_i915_private*) ;
 int vlv_punit_read (struct drm_i915_private*,int ) ;
 int vlv_punit_write (struct drm_i915_private*,int ,int ) ;

__attribute__((used)) static void chv_set_memory_pm5(struct drm_i915_private *dev_priv, bool enable)
{
 u32 val;

 vlv_punit_get(dev_priv);

 val = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
 if (enable)
  val |= DSP_MAXFIFO_PM5_ENABLE;
 else
  val &= ~DSP_MAXFIFO_PM5_ENABLE;
 vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, val);

 vlv_punit_put(dev_priv);
}

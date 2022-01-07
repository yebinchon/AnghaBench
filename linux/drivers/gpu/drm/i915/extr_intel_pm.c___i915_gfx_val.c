
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {unsigned long corr; unsigned long gfx_power; } ;
struct TYPE_4__ {int cur_freq; } ;
struct TYPE_5__ {TYPE_1__ rps; } ;
struct drm_i915_private {TYPE_3__ ips; TYPE_2__ gt_pm; } ;


 int I915_READ (int ) ;
 int PXVFREQ (int ) ;
 int __i915_update_gfx_val (struct drm_i915_private*) ;
 unsigned long i915_mch_val (struct drm_i915_private*) ;
 int lockdep_assert_held (int *) ;
 int mchdev_lock ;
 int pvid_to_extvid (struct drm_i915_private*,int) ;

__attribute__((used)) static unsigned long __i915_gfx_val(struct drm_i915_private *dev_priv)
{
 unsigned long t, corr, state1, corr2, state2;
 u32 pxvid, ext_v;

 lockdep_assert_held(&mchdev_lock);

 pxvid = I915_READ(PXVFREQ(dev_priv->gt_pm.rps.cur_freq));
 pxvid = (pxvid >> 24) & 0x7f;
 ext_v = pvid_to_extvid(dev_priv, pxvid);

 state1 = ext_v;

 t = i915_mch_val(dev_priv);




 if (t > 80)
  corr = ((t * 2349) + 135940);
 else if (t >= 50)
  corr = ((t * 964) + 29317);
 else
  corr = ((t * 301) + 1004);

 corr = corr * ((150142 * state1) / 10000 - 78642);
 corr /= 100000;
 corr2 = (corr * dev_priv->ips.corr);

 state2 = (corr2 * state1) / 10000;
 state2 /= 100;

 __i915_update_gfx_val(dev_priv);

 return dev_priv->ips.gfx_power + state2;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int last_time2; scalar_t__ last_count2; int gfx_power; } ;
struct drm_i915_private {TYPE_1__ ips; } ;


 int GFXEC ;
 scalar_t__ I915_READ (int ) ;
 int NSEC_PER_MSEC ;
 int div_u64 (int,int) ;
 int do_div (int,int ) ;
 int ktime_get_raw_ns () ;
 int lockdep_assert_held (int *) ;
 int mchdev_lock ;

__attribute__((used)) static void __i915_update_gfx_val(struct drm_i915_private *dev_priv)
{
 u64 now, diff, diffms;
 u32 count;

 lockdep_assert_held(&mchdev_lock);

 now = ktime_get_raw_ns();
 diffms = now - dev_priv->ips.last_time2;
 do_div(diffms, NSEC_PER_MSEC);


 if (!diffms)
  return;

 count = I915_READ(GFXEC);

 if (count < dev_priv->ips.last_count2) {
  diff = ~0UL - dev_priv->ips.last_count2;
  diff += count;
 } else {
  diff = count - dev_priv->ips.last_count2;
 }

 dev_priv->ips.last_count2 = count;
 dev_priv->ips.last_time2 = now;


 diff = diff * 1181;
 diff = div_u64(diff, diffms * 10);
 dev_priv->ips.gfx_power = diff;
}

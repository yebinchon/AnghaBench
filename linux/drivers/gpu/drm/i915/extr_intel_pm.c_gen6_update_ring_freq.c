
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_rps {unsigned int max_freq; unsigned int min_freq; int lock; } ;
struct TYPE_3__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;
struct TYPE_4__ {unsigned int max_freq; } ;
struct cpufreq_policy {TYPE_2__ cpuinfo; } ;


 int DCLK ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 unsigned int GEN6_PCODE_FREQ_IA_RATIO_SHIFT ;
 unsigned int GEN6_PCODE_FREQ_RING_RATIO_SHIFT ;
 int GEN6_PCODE_WRITE_MIN_FREQ_TABLE ;
 unsigned int GEN9_FREQ_SCALER ;
 int I915_READ (int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_GEN9_BC (struct drm_i915_private*) ;
 scalar_t__ IS_HASWELL (struct drm_i915_private*) ;
 struct cpufreq_policy* cpufreq_cpu_get (int ) ;
 int cpufreq_cpu_put (struct cpufreq_policy*) ;
 int lockdep_assert_held (int *) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int mult_frac (unsigned int,int,int) ;
 int sandybridge_pcode_write (struct drm_i915_private*,int ,unsigned int) ;
 unsigned int tsc_khz ;

__attribute__((used)) static void gen6_update_ring_freq(struct drm_i915_private *dev_priv)
{
 struct intel_rps *rps = &dev_priv->gt_pm.rps;
 const int min_freq = 15;
 const int scaling_factor = 180;
 unsigned int gpu_freq;
 unsigned int max_ia_freq, min_ring_freq;
 unsigned int max_gpu_freq, min_gpu_freq;
 struct cpufreq_policy *policy;

 lockdep_assert_held(&rps->lock);

 if (rps->max_freq <= rps->min_freq)
  return;

 policy = cpufreq_cpu_get(0);
 if (policy) {
  max_ia_freq = policy->cpuinfo.max_freq;
  cpufreq_cpu_put(policy);
 } else {




  max_ia_freq = tsc_khz;
 }


 max_ia_freq /= 1000;

 min_ring_freq = I915_READ(DCLK) & 0xf;

 min_ring_freq = mult_frac(min_ring_freq, 8, 3);

 min_gpu_freq = rps->min_freq;
 max_gpu_freq = rps->max_freq;
 if (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) {

  min_gpu_freq /= GEN9_FREQ_SCALER;
  max_gpu_freq /= GEN9_FREQ_SCALER;
 }






 for (gpu_freq = max_gpu_freq; gpu_freq >= min_gpu_freq; gpu_freq--) {
  const int diff = max_gpu_freq - gpu_freq;
  unsigned int ia_freq = 0, ring_freq = 0;

  if (IS_GEN9_BC(dev_priv) || INTEL_GEN(dev_priv) >= 10) {




   ring_freq = gpu_freq;
  } else if (INTEL_GEN(dev_priv) >= 8) {

   ring_freq = max(min_ring_freq, gpu_freq);
  } else if (IS_HASWELL(dev_priv)) {
   ring_freq = mult_frac(gpu_freq, 5, 4);
   ring_freq = max(min_ring_freq, ring_freq);

  } else {







   if (gpu_freq < min_freq)
    ia_freq = 800;
   else
    ia_freq = max_ia_freq - ((diff * scaling_factor) / 2);
   ia_freq = DIV_ROUND_CLOSEST(ia_freq, 100);
  }

  sandybridge_pcode_write(dev_priv,
     GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
     ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
     ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
     gpu_freq);
 }
}

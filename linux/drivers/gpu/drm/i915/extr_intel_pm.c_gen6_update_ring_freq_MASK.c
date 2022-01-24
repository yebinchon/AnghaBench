#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_rps {unsigned int max_freq; unsigned int min_freq; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {struct intel_rps rps; } ;
struct drm_i915_private {TYPE_1__ gt_pm; } ;
struct TYPE_4__ {unsigned int max_freq; } ;
struct cpufreq_policy {TYPE_2__ cpuinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  DCLK ; 
 unsigned int FUNC0 (unsigned int,int) ; 
 unsigned int GEN6_PCODE_FREQ_IA_RATIO_SHIFT ; 
 unsigned int GEN6_PCODE_FREQ_RING_RATIO_SHIFT ; 
 int /*<<< orphan*/  GEN6_PCODE_WRITE_MIN_FREQ_TABLE ; 
 unsigned int GEN9_FREQ_SCALER ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 struct cpufreq_policy* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (unsigned int,unsigned int) ; 
 unsigned int FUNC9 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int tsc_khz ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv)
{
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	const int min_freq = 15;
	const int scaling_factor = 180;
	unsigned int gpu_freq;
	unsigned int max_ia_freq, min_ring_freq;
	unsigned int max_gpu_freq, min_gpu_freq;
	struct cpufreq_policy *policy;

	FUNC7(&rps->lock);

	if (rps->max_freq <= rps->min_freq)
		return;

	policy = FUNC5(0);
	if (policy) {
		max_ia_freq = policy->cpuinfo.max_freq;
		FUNC6(policy);
	} else {
		/*
		 * Default to measured freq if none found, PCU will ensure we
		 * don't go over
		 */
		max_ia_freq = tsc_khz;
	}

	/* Convert from kHz to MHz */
	max_ia_freq /= 1000;

	min_ring_freq = FUNC1(DCLK) & 0xf;
	/* convert DDR frequency from units of 266.6MHz to bandwidth */
	min_ring_freq = FUNC9(min_ring_freq, 8, 3);

	min_gpu_freq = rps->min_freq;
	max_gpu_freq = rps->max_freq;
	if (FUNC3(dev_priv) || FUNC2(dev_priv) >= 10) {
		/* Convert GT frequency to 50 HZ units */
		min_gpu_freq /= GEN9_FREQ_SCALER;
		max_gpu_freq /= GEN9_FREQ_SCALER;
	}

	/*
	 * For each potential GPU frequency, load a ring frequency we'd like
	 * to use for memory access.  We do this by specifying the IA frequency
	 * the PCU should use as a reference to determine the ring frequency.
	 */
	for (gpu_freq = max_gpu_freq; gpu_freq >= min_gpu_freq; gpu_freq--) {
		const int diff = max_gpu_freq - gpu_freq;
		unsigned int ia_freq = 0, ring_freq = 0;

		if (FUNC3(dev_priv) || FUNC2(dev_priv) >= 10) {
			/*
			 * ring_freq = 2 * GT. ring_freq is in 100MHz units
			 * No floor required for ring frequency on SKL.
			 */
			ring_freq = gpu_freq;
		} else if (FUNC2(dev_priv) >= 8) {
			/* max(2 * GT, DDR). NB: GT is 50MHz units */
			ring_freq = FUNC8(min_ring_freq, gpu_freq);
		} else if (FUNC4(dev_priv)) {
			ring_freq = FUNC9(gpu_freq, 5, 4);
			ring_freq = FUNC8(min_ring_freq, ring_freq);
			/* leave ia_freq as the default, chosen by cpufreq */
		} else {
			/* On older processors, there is no separate ring
			 * clock domain, so in order to boost the bandwidth
			 * of the ring, we need to upclock the CPU (ia_freq).
			 *
			 * For GPU frequencies less than 750MHz,
			 * just use the lowest ring freq.
			 */
			if (gpu_freq < min_freq)
				ia_freq = 800;
			else
				ia_freq = max_ia_freq - ((diff * scaling_factor) / 2);
			ia_freq = FUNC0(ia_freq, 100);
		}

		FUNC10(dev_priv,
					GEN6_PCODE_WRITE_MIN_FREQ_TABLE,
					ia_freq << GEN6_PCODE_FREQ_IA_RATIO_SHIFT |
					ring_freq << GEN6_PCODE_FREQ_RING_RATIO_SHIFT |
					gpu_freq);
	}
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_rps {unsigned int min_freq; unsigned int max_freq; } ;
struct TYPE_2__ {struct intel_rps rps; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; TYPE_1__ gt_pm; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GEN6_PCODE_READ_MIN_FREQ_TABLE ; 
 unsigned int GEN9_FREQ_SCALER ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC10(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC6(m->private);
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	unsigned int max_gpu_freq, min_gpu_freq;
	intel_wakeref_t wakeref;
	int gpu_freq, ia_freq;

	if (!FUNC0(dev_priv))
		return -ENODEV;

	min_gpu_freq = rps->min_freq;
	max_gpu_freq = rps->max_freq;
	if (FUNC2(dev_priv) || FUNC1(dev_priv) >= 10) {
		/* Convert GT frequency to 50 HZ units */
		min_gpu_freq /= GEN9_FREQ_SCALER;
		max_gpu_freq /= GEN9_FREQ_SCALER;
	}

	FUNC9(m, "GPU freq (MHz)\tEffective CPU freq (MHz)\tEffective Ring freq (MHz)\n");

	wakeref = FUNC4(&dev_priv->runtime_pm);
	for (gpu_freq = min_gpu_freq; gpu_freq <= max_gpu_freq; gpu_freq++) {
		ia_freq = gpu_freq;
		FUNC7(dev_priv,
				       GEN6_PCODE_READ_MIN_FREQ_TABLE,
				       &ia_freq, NULL);
		FUNC8(m, "%d\t\t%d\t\t\t\t%d\n",
			   FUNC3(dev_priv, (gpu_freq *
						     (FUNC2(dev_priv) ||
						      FUNC1(dev_priv) >= 10 ?
						      GEN9_FREQ_SCALER : 1))),
			   ((ia_freq >> 0) & 0xff) * 100,
			   ((ia_freq >> 8) & 0xff) * 100);
	}
	FUNC5(&dev_priv->runtime_pm, wakeref);

	return 0;
}
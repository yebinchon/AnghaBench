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
typedef  int u32 ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct i915_psr {int debug; int /*<<< orphan*/  lock; scalar_t__ psr2_enabled; int /*<<< orphan*/  last_exit; int /*<<< orphan*/  last_entry_attempt; int /*<<< orphan*/  busy_frontbuffer_bits; scalar_t__ enabled; int /*<<< orphan*/  sink_support; TYPE_1__* dp; } ;
struct drm_i915_private {int /*<<< orphan*/  runtime_pm; struct i915_psr psr; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;
struct TYPE_2__ {int /*<<< orphan*/ * psr_dpcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EDP_PSR2_CTL ; 
 int EDP_PSR2_ENABLE ; 
 int /*<<< orphan*/  EDP_PSR_CTL ; 
 int EDP_PSR_ENABLE ; 
 int /*<<< orphan*/  EDP_PSR_PERF_CNT ; 
 int EDP_PSR_PERF_CNT_MASK ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int I915_PSR_DEBUG_IRQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PSR2_SU_STATUS_FRAMES ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct drm_i915_private* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,struct seq_file*) ; 
 int /*<<< orphan*/  FUNC14 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct seq_file *m, void *data)
{
	struct drm_i915_private *dev_priv = FUNC12(m->private);
	struct i915_psr *psr = &dev_priv->psr;
	intel_wakeref_t wakeref;
	const char *status;
	bool enabled;
	u32 val;

	if (!FUNC0(dev_priv))
		return -ENODEV;

	FUNC14(m, "Sink support: %s", FUNC16(psr->sink_support));
	if (psr->dp)
		FUNC14(m, " [0x%02x]", psr->dp->psr_dpcd[0]);
	FUNC15(m, "\n");

	if (!psr->sink_support)
		return 0;

	wakeref = FUNC8(&dev_priv->runtime_pm);
	FUNC10(&psr->lock);

	if (psr->enabled)
		status = psr->psr2_enabled ? "PSR2 enabled" : "PSR1 enabled";
	else
		status = "disabled";
	FUNC14(m, "PSR mode: %s\n", status);

	if (!psr->enabled)
		goto unlock;

	if (psr->psr2_enabled) {
		val = FUNC1(EDP_PSR2_CTL);
		enabled = val & EDP_PSR2_ENABLE;
	} else {
		val = FUNC1(EDP_PSR_CTL);
		enabled = val & EDP_PSR_ENABLE;
	}
	FUNC14(m, "Source PSR ctl: %s [0x%08x]\n",
		   FUNC7(enabled), val);
	FUNC13(dev_priv, m);
	FUNC14(m, "Busy frontbuffer bits: 0x%08x\n",
		   psr->busy_frontbuffer_bits);

	/*
	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
	 */
	if (FUNC3(dev_priv) || FUNC2(dev_priv)) {
		val = FUNC1(EDP_PSR_PERF_CNT) & EDP_PSR_PERF_CNT_MASK;
		FUNC14(m, "Performance counter: %u\n", val);
	}

	if (psr->debug & I915_PSR_DEBUG_IRQ) {
		FUNC14(m, "Last attempted entry at: %lld\n",
			   psr->last_entry_attempt);
		FUNC14(m, "Last exit at: %lld\n", psr->last_exit);
	}

	if (psr->psr2_enabled) {
		u32 su_frames_val[3];
		int frame;

		/*
		 * Reading all 3 registers before hand to minimize crossing a
		 * frame boundary between register reads
		 */
		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame += 3)
			su_frames_val[frame / 3] = FUNC1(FUNC4(frame));

		FUNC15(m, "Frame:\tPSR2 SU blocks:\n");

		for (frame = 0; frame < PSR2_SU_STATUS_FRAMES; frame++) {
			u32 su_blocks;

			su_blocks = su_frames_val[frame / 3] &
				    FUNC5(frame);
			su_blocks = su_blocks >> FUNC6(frame);
			FUNC14(m, "%d\t%d\n", frame, su_blocks);
		}
	}

unlock:
	FUNC11(&psr->lock);
	FUNC9(&dev_priv->runtime_pm, wakeref);

	return 0;
}
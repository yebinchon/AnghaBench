#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct seq_file {int /*<<< orphan*/  private; } ;
struct intel_uncore {int dummy; } ;
struct TYPE_5__ {int up_threshold; int down_threshold; } ;
struct intel_rps {int cur_freq; int max_freq; int min_freq; int idle_freq; int efficient_freq; int pm_intrmsk_mbz; int boost_freq; TYPE_1__ power; } ;
struct TYPE_6__ {int cdclk; } ;
struct TYPE_7__ {TYPE_2__ hw; } ;
struct TYPE_8__ {struct intel_rps rps; } ;
struct drm_i915_private {int mem_freq; int max_cdclk_freq; int max_dotclk_freq; int /*<<< orphan*/  runtime_pm; TYPE_3__ cdclk; struct intel_uncore uncore; TYPE_4__ gt_pm; } ;
typedef  int /*<<< orphan*/  intel_wakeref_t ;

/* Variables and functions */
 int /*<<< orphan*/  BXT_GT_PERF_STATUS ; 
 int /*<<< orphan*/  BXT_RP_STATE_CAP ; 
 int /*<<< orphan*/  FORCEWAKE_ALL ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_ENABLE ; 
 int /*<<< orphan*/  GEN11_GPM_WGBOXPERF_INTR_MASK ; 
 int GEN6_CURBSYTAVG_MASK ; 
 int GEN6_CURIAVG_MASK ; 
 int GEN6_CURICONT_MASK ; 
 int /*<<< orphan*/  GEN6_GT_PERF_STATUS ; 
 int /*<<< orphan*/  GEN6_PMIER ; 
 int /*<<< orphan*/  GEN6_PMIIR ; 
 int /*<<< orphan*/  GEN6_PMIMR ; 
 int /*<<< orphan*/  GEN6_PMINTRMSK ; 
 int /*<<< orphan*/  GEN6_PMISR ; 
 int /*<<< orphan*/  GEN6_RPNSWREQ ; 
 int /*<<< orphan*/  GEN6_RPSTAT1 ; 
 int /*<<< orphan*/  GEN6_RP_CONTROL ; 
 int /*<<< orphan*/  GEN6_RP_CUR_DOWN ; 
 int /*<<< orphan*/  GEN6_RP_CUR_DOWN_EI ; 
 int /*<<< orphan*/  GEN6_RP_CUR_UP ; 
 int /*<<< orphan*/  GEN6_RP_CUR_UP_EI ; 
 int /*<<< orphan*/  GEN6_RP_DOWN_THRESHOLD ; 
 int GEN6_RP_ENABLE ; 
 int GEN6_RP_MEDIA_MODE_MASK ; 
 int GEN6_RP_MEDIA_SW_MODE ; 
 int GEN6_RP_MEDIA_TURBO ; 
 int /*<<< orphan*/  GEN6_RP_PREV_DOWN ; 
 int /*<<< orphan*/  GEN6_RP_PREV_UP ; 
 int /*<<< orphan*/  GEN6_RP_STATE_CAP ; 
 int /*<<< orphan*/  GEN6_RP_STATE_LIMITS ; 
 int /*<<< orphan*/  GEN6_RP_UP_THRESHOLD ; 
 int GEN6_TURBO_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int GEN9_FREQ_SCALER ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*) ; 
 scalar_t__ FUNC8 (struct drm_i915_private*) ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC10 (struct drm_i915_private*) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  MEMSTAT_ILK ; 
 int MEMSTAT_PSTATE_MASK ; 
 int MEMSTAT_PSTATE_SHIFT ; 
 int MEMSTAT_VID_MASK ; 
 int MEMSTAT_VID_SHIFT ; 
 int /*<<< orphan*/  MEMSWCTL ; 
 int /*<<< orphan*/  PUNIT_REG_GPU_FREQ_STS ; 
 int FUNC14 (struct drm_i915_private*,int) ; 
 int FUNC15 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int FUNC20 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 struct drm_i915_private* FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct seq_file*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC23 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC24 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC25 (struct drm_i915_private*) ; 
 int FUNC26 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 int FUNC27 (int) ; 

__attribute__((used)) static int FUNC28(struct seq_file *m, void *unused)
{
	struct drm_i915_private *dev_priv = FUNC21(m->private);
	struct intel_uncore *uncore = &dev_priv->uncore;
	struct intel_rps *rps = &dev_priv->gt_pm.rps;
	intel_wakeref_t wakeref;
	int ret = 0;

	wakeref = FUNC16(&dev_priv->runtime_pm);

	if (FUNC9(dev_priv, 5)) {
		u16 rgvswctl = FUNC20(uncore, MEMSWCTL);
		u16 rgvstat = FUNC20(uncore, MEMSTAT_ILK);

		FUNC22(m, "Requested P-state: %d\n", (rgvswctl >> 8) & 0xf);
		FUNC22(m, "Requested VID: %d\n", rgvswctl & 0x3f);
		FUNC22(m, "Current VID: %d\n", (rgvstat & MEMSTAT_VID_MASK) >>
			   MEMSTAT_VID_SHIFT);
		FUNC22(m, "Current P-state: %d\n",
			   (rgvstat & MEMSTAT_PSTATE_MASK) >> MEMSTAT_PSTATE_SHIFT);
	} else if (FUNC13(dev_priv) || FUNC8(dev_priv)) {
		u32 rpmodectl, freq_sts;

		rpmodectl = FUNC5(GEN6_RP_CONTROL);
		FUNC22(m, "Video Turbo Mode: %s\n",
			   FUNC27(rpmodectl & GEN6_RP_MEDIA_TURBO));
		FUNC22(m, "HW control enabled: %s\n",
			   FUNC27(rpmodectl & GEN6_RP_ENABLE));
		FUNC22(m, "SW control enabled: %s\n",
			   FUNC27((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
				  GEN6_RP_MEDIA_SW_MODE));

		FUNC24(dev_priv);
		freq_sts = FUNC26(dev_priv, PUNIT_REG_GPU_FREQ_STS);
		FUNC25(dev_priv);

		FUNC22(m, "PUNIT_REG_GPU_FREQ_STS: 0x%08x\n", freq_sts);
		FUNC22(m, "DDR freq: %d MHz\n", dev_priv->mem_freq);

		FUNC22(m, "actual GPU freq: %d MHz\n",
			   FUNC15(dev_priv, (freq_sts >> 8) & 0xff));

		FUNC22(m, "current GPU freq: %d MHz\n",
			   FUNC15(dev_priv, rps->cur_freq));

		FUNC22(m, "max GPU freq: %d MHz\n",
			   FUNC15(dev_priv, rps->max_freq));

		FUNC22(m, "min GPU freq: %d MHz\n",
			   FUNC15(dev_priv, rps->min_freq));

		FUNC22(m, "idle GPU freq: %d MHz\n",
			   FUNC15(dev_priv, rps->idle_freq));

		FUNC22(m,
			   "efficient (RPe) frequency: %d MHz\n",
			   FUNC15(dev_priv, rps->efficient_freq));
	} else if (FUNC6(dev_priv) >= 6) {
		u32 rp_state_limits;
		u32 gt_perf_status;
		u32 rp_state_cap;
		u32 rpmodectl, rpinclimit, rpdeclimit;
		u32 rpstat, cagf, reqf;
		u32 rpupei, rpcurup, rpprevup;
		u32 rpdownei, rpcurdown, rpprevdown;
		u32 pm_ier, pm_imr, pm_isr, pm_iir, pm_mask;
		int max_freq;

		rp_state_limits = FUNC5(GEN6_RP_STATE_LIMITS);
		if (FUNC11(dev_priv)) {
			rp_state_cap = FUNC5(BXT_RP_STATE_CAP);
			gt_perf_status = FUNC5(BXT_GT_PERF_STATUS);
		} else {
			rp_state_cap = FUNC5(GEN6_RP_STATE_CAP);
			gt_perf_status = FUNC5(GEN6_GT_PERF_STATUS);
		}

		/* RPSTAT1 is in the GT power well */
		FUNC18(&dev_priv->uncore, FORCEWAKE_ALL);

		reqf = FUNC5(GEN6_RPNSWREQ);
		if (FUNC6(dev_priv) >= 9)
			reqf >>= 23;
		else {
			reqf &= ~GEN6_TURBO_DISABLE;
			if (FUNC12(dev_priv) || FUNC7(dev_priv))
				reqf >>= 24;
			else
				reqf >>= 25;
		}
		reqf = FUNC15(dev_priv, reqf);

		rpmodectl = FUNC5(GEN6_RP_CONTROL);
		rpinclimit = FUNC5(GEN6_RP_UP_THRESHOLD);
		rpdeclimit = FUNC5(GEN6_RP_DOWN_THRESHOLD);

		rpstat = FUNC5(GEN6_RPSTAT1);
		rpupei = FUNC5(GEN6_RP_CUR_UP_EI) & GEN6_CURICONT_MASK;
		rpcurup = FUNC5(GEN6_RP_CUR_UP) & GEN6_CURBSYTAVG_MASK;
		rpprevup = FUNC5(GEN6_RP_PREV_UP) & GEN6_CURBSYTAVG_MASK;
		rpdownei = FUNC5(GEN6_RP_CUR_DOWN_EI) & GEN6_CURIAVG_MASK;
		rpcurdown = FUNC5(GEN6_RP_CUR_DOWN) & GEN6_CURBSYTAVG_MASK;
		rpprevdown = FUNC5(GEN6_RP_PREV_DOWN) & GEN6_CURBSYTAVG_MASK;
		cagf = FUNC15(dev_priv,
				      FUNC14(dev_priv, rpstat));

		FUNC19(&dev_priv->uncore, FORCEWAKE_ALL);

		if (FUNC6(dev_priv) >= 11) {
			pm_ier = FUNC5(GEN11_GPM_WGBOXPERF_INTR_ENABLE);
			pm_imr = FUNC5(GEN11_GPM_WGBOXPERF_INTR_MASK);
			/*
			 * The equivalent to the PM ISR & IIR cannot be read
			 * without affecting the current state of the system
			 */
			pm_isr = 0;
			pm_iir = 0;
		} else if (FUNC6(dev_priv) >= 8) {
			pm_ier = FUNC5(FUNC0(2));
			pm_imr = FUNC5(FUNC2(2));
			pm_isr = FUNC5(FUNC3(2));
			pm_iir = FUNC5(FUNC1(2));
		} else {
			pm_ier = FUNC5(GEN6_PMIER);
			pm_imr = FUNC5(GEN6_PMIMR);
			pm_isr = FUNC5(GEN6_PMISR);
			pm_iir = FUNC5(GEN6_PMIIR);
		}
		pm_mask = FUNC5(GEN6_PMINTRMSK);

		FUNC22(m, "Video Turbo Mode: %s\n",
			   FUNC27(rpmodectl & GEN6_RP_MEDIA_TURBO));
		FUNC22(m, "HW control enabled: %s\n",
			   FUNC27(rpmodectl & GEN6_RP_ENABLE));
		FUNC22(m, "SW control enabled: %s\n",
			   FUNC27((rpmodectl & GEN6_RP_MEDIA_MODE_MASK) ==
				  GEN6_RP_MEDIA_SW_MODE));

		FUNC22(m, "PM IER=0x%08x IMR=0x%08x, MASK=0x%08x\n",
			   pm_ier, pm_imr, pm_mask);
		if (FUNC6(dev_priv) <= 10)
			FUNC22(m, "PM ISR=0x%08x IIR=0x%08x\n",
				   pm_isr, pm_iir);
		FUNC22(m, "pm_intrmsk_mbz: 0x%08x\n",
			   rps->pm_intrmsk_mbz);
		FUNC22(m, "GT_PERF_STATUS: 0x%08x\n", gt_perf_status);
		FUNC22(m, "Render p-state ratio: %d\n",
			   (gt_perf_status & (FUNC6(dev_priv) >= 9 ? 0x1ff00 : 0xff00)) >> 8);
		FUNC22(m, "Render p-state VID: %d\n",
			   gt_perf_status & 0xff);
		FUNC22(m, "Render p-state limit: %d\n",
			   rp_state_limits & 0xff);
		FUNC22(m, "RPSTAT1: 0x%08x\n", rpstat);
		FUNC22(m, "RPMODECTL: 0x%08x\n", rpmodectl);
		FUNC22(m, "RPINCLIMIT: 0x%08x\n", rpinclimit);
		FUNC22(m, "RPDECLIMIT: 0x%08x\n", rpdeclimit);
		FUNC22(m, "RPNSWREQ: %dMHz\n", reqf);
		FUNC22(m, "CAGF: %dMHz\n", cagf);
		FUNC22(m, "RP CUR UP EI: %d (%dus)\n",
			   rpupei, FUNC4(dev_priv, rpupei));
		FUNC22(m, "RP CUR UP: %d (%dus)\n",
			   rpcurup, FUNC4(dev_priv, rpcurup));
		FUNC22(m, "RP PREV UP: %d (%dus)\n",
			   rpprevup, FUNC4(dev_priv, rpprevup));
		FUNC22(m, "Up threshold: %d%%\n",
			   rps->power.up_threshold);

		FUNC22(m, "RP CUR DOWN EI: %d (%dus)\n",
			   rpdownei, FUNC4(dev_priv, rpdownei));
		FUNC22(m, "RP CUR DOWN: %d (%dus)\n",
			   rpcurdown, FUNC4(dev_priv, rpcurdown));
		FUNC22(m, "RP PREV DOWN: %d (%dus)\n",
			   rpprevdown, FUNC4(dev_priv, rpprevdown));
		FUNC22(m, "Down threshold: %d%%\n",
			   rps->power.down_threshold);

		max_freq = (FUNC11(dev_priv) ? rp_state_cap >> 0 :
			    rp_state_cap >> 16) & 0xff;
		max_freq *= (FUNC10(dev_priv) ||
			     FUNC6(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
		FUNC22(m, "Lowest (RPN) frequency: %dMHz\n",
			   FUNC15(dev_priv, max_freq));

		max_freq = (rp_state_cap & 0xff00) >> 8;
		max_freq *= (FUNC10(dev_priv) ||
			     FUNC6(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
		FUNC22(m, "Nominal (RP1) frequency: %dMHz\n",
			   FUNC15(dev_priv, max_freq));

		max_freq = (FUNC11(dev_priv) ? rp_state_cap >> 16 :
			    rp_state_cap >> 0) & 0xff;
		max_freq *= (FUNC10(dev_priv) ||
			     FUNC6(dev_priv) >= 10 ? GEN9_FREQ_SCALER : 1);
		FUNC22(m, "Max non-overclocked (RP0) frequency: %dMHz\n",
			   FUNC15(dev_priv, max_freq));
		FUNC22(m, "Max overclocked frequency: %dMHz\n",
			   FUNC15(dev_priv, rps->max_freq));

		FUNC22(m, "Current freq: %d MHz\n",
			   FUNC15(dev_priv, rps->cur_freq));
		FUNC22(m, "Actual freq: %d MHz\n", cagf);
		FUNC22(m, "Idle freq: %d MHz\n",
			   FUNC15(dev_priv, rps->idle_freq));
		FUNC22(m, "Min freq: %d MHz\n",
			   FUNC15(dev_priv, rps->min_freq));
		FUNC22(m, "Boost freq: %d MHz\n",
			   FUNC15(dev_priv, rps->boost_freq));
		FUNC22(m, "Max freq: %d MHz\n",
			   FUNC15(dev_priv, rps->max_freq));
		FUNC22(m,
			   "efficient (RPe) frequency: %d MHz\n",
			   FUNC15(dev_priv, rps->efficient_freq));
	} else {
		FUNC23(m, "no P-state info available\n");
	}

	FUNC22(m, "Current CD clock frequency: %d kHz\n", dev_priv->cdclk.hw.cdclk);
	FUNC22(m, "Max CD clock frequency: %d kHz\n", dev_priv->max_cdclk_freq);
	FUNC22(m, "Max pixel clock frequency: %d kHz\n", dev_priv->max_dotclk_freq);

	FUNC17(&dev_priv->runtime_pm, wakeref);
	return ret;
}
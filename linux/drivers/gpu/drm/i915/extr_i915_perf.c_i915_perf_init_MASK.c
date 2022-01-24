#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* enable_metric_set; int /*<<< orphan*/  disable_metric_set; int /*<<< orphan*/ * is_valid_flex_reg; int /*<<< orphan*/  is_valid_mux_reg; void* is_valid_b_counter_reg; int /*<<< orphan*/  oa_hw_tail_read; int /*<<< orphan*/  read; int /*<<< orphan*/  oa_disable; int /*<<< orphan*/  oa_enable; } ;
struct TYPE_5__ {int ctx_oactxctrl_offset; int ctx_flexeu0_offset; int initialized; int /*<<< orphan*/  spurious_report_rs; int /*<<< orphan*/  metrics_idr; int /*<<< orphan*/  metrics_lock; int /*<<< orphan*/  sysctl_header; int /*<<< orphan*/  lock; int /*<<< orphan*/  streams; TYPE_1__ ops; void* gen8_valid_ctx_bit; int /*<<< orphan*/  oa_formats; } ;
struct drm_i915_private {TYPE_2__ perf; } ;
struct TYPE_6__ {int cs_timestamp_frequency_khz; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC5 (struct drm_i915_private*,int,int) ; 
 scalar_t__ FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  RATELIMIT_MSG_ON_RELEASE ; 
 TYPE_3__* FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  chv_is_valid_mux_addr ; 
 int /*<<< orphan*/  dev_root ; 
 int /*<<< orphan*/  gen10_disable_metric_set ; 
 int /*<<< orphan*/  gen10_is_valid_mux_addr ; 
 void* gen7_is_valid_b_counter_addr ; 
 int /*<<< orphan*/  gen7_oa_disable ; 
 int /*<<< orphan*/  gen7_oa_enable ; 
 int /*<<< orphan*/  gen7_oa_hw_tail_read ; 
 int /*<<< orphan*/  gen7_oa_read ; 
 int /*<<< orphan*/  gen8_disable_metric_set ; 
 void* gen8_enable_metric_set ; 
 void* gen8_is_valid_flex_addr ; 
 int /*<<< orphan*/  gen8_is_valid_mux_addr ; 
 int /*<<< orphan*/  gen8_oa_disable ; 
 int /*<<< orphan*/  gen8_oa_enable ; 
 int /*<<< orphan*/  gen8_oa_hw_tail_read ; 
 int /*<<< orphan*/  gen8_oa_read ; 
 int /*<<< orphan*/  gen8_plus_oa_formats ; 
 int /*<<< orphan*/  hsw_disable_metric_set ; 
 void* hsw_enable_metric_set ; 
 int /*<<< orphan*/  hsw_is_valid_mux_addr ; 
 int /*<<< orphan*/  hsw_oa_formats ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int oa_sample_rate_hard_limit ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(struct drm_i915_private *dev_priv)
{
	if (FUNC6(dev_priv)) {
		dev_priv->perf.ops.is_valid_b_counter_reg =
			gen7_is_valid_b_counter_addr;
		dev_priv->perf.ops.is_valid_mux_reg =
			hsw_is_valid_mux_addr;
		dev_priv->perf.ops.is_valid_flex_reg = NULL;
		dev_priv->perf.ops.enable_metric_set = hsw_enable_metric_set;
		dev_priv->perf.ops.disable_metric_set = hsw_disable_metric_set;
		dev_priv->perf.ops.oa_enable = gen7_oa_enable;
		dev_priv->perf.ops.oa_disable = gen7_oa_disable;
		dev_priv->perf.ops.read = gen7_oa_read;
		dev_priv->perf.ops.oa_hw_tail_read =
			gen7_oa_hw_tail_read;

		dev_priv->perf.oa_formats = hsw_oa_formats;
	} else if (FUNC1(dev_priv)) {
		/* Note: that although we could theoretically also support the
		 * legacy ringbuffer mode on BDW (and earlier iterations of
		 * this driver, before upstreaming did this) it didn't seem
		 * worth the complexity to maintain now that BDW+ enable
		 * execlist mode by default.
		 */
		dev_priv->perf.oa_formats = gen8_plus_oa_formats;

		dev_priv->perf.ops.oa_enable = gen8_oa_enable;
		dev_priv->perf.ops.oa_disable = gen8_oa_disable;
		dev_priv->perf.ops.read = gen8_oa_read;
		dev_priv->perf.ops.oa_hw_tail_read = gen8_oa_hw_tail_read;

		if (FUNC5(dev_priv, 8, 9)) {
			dev_priv->perf.ops.is_valid_b_counter_reg =
				gen7_is_valid_b_counter_addr;
			dev_priv->perf.ops.is_valid_mux_reg =
				gen8_is_valid_mux_addr;
			dev_priv->perf.ops.is_valid_flex_reg =
				gen8_is_valid_flex_addr;

			if (FUNC3(dev_priv)) {
				dev_priv->perf.ops.is_valid_mux_reg =
					chv_is_valid_mux_addr;
			}

			dev_priv->perf.ops.enable_metric_set = gen8_enable_metric_set;
			dev_priv->perf.ops.disable_metric_set = gen8_disable_metric_set;

			if (FUNC4(dev_priv, 8)) {
				dev_priv->perf.ctx_oactxctrl_offset = 0x120;
				dev_priv->perf.ctx_flexeu0_offset = 0x2ce;

				dev_priv->perf.gen8_valid_ctx_bit = FUNC0(25);
			} else {
				dev_priv->perf.ctx_oactxctrl_offset = 0x128;
				dev_priv->perf.ctx_flexeu0_offset = 0x3de;

				dev_priv->perf.gen8_valid_ctx_bit = FUNC0(16);
			}
		} else if (FUNC5(dev_priv, 10, 11)) {
			dev_priv->perf.ops.is_valid_b_counter_reg =
				gen7_is_valid_b_counter_addr;
			dev_priv->perf.ops.is_valid_mux_reg =
				gen10_is_valid_mux_addr;
			dev_priv->perf.ops.is_valid_flex_reg =
				gen8_is_valid_flex_addr;

			dev_priv->perf.ops.enable_metric_set = gen8_enable_metric_set;
			dev_priv->perf.ops.disable_metric_set = gen10_disable_metric_set;

			if (FUNC4(dev_priv, 10)) {
				dev_priv->perf.ctx_oactxctrl_offset = 0x128;
				dev_priv->perf.ctx_flexeu0_offset = 0x3de;
			} else {
				dev_priv->perf.ctx_oactxctrl_offset = 0x124;
				dev_priv->perf.ctx_flexeu0_offset = 0x78e;
			}
			dev_priv->perf.gen8_valid_ctx_bit = FUNC0(16);
		}
	}

	if (dev_priv->perf.ops.enable_metric_set) {
		FUNC2(&dev_priv->perf.streams);
		FUNC9(&dev_priv->perf.lock);

		oa_sample_rate_hard_limit = 1000 *
			(FUNC7(dev_priv)->cs_timestamp_frequency_khz / 2);
		dev_priv->perf.sysctl_header = FUNC12(dev_root);

		FUNC9(&dev_priv->perf.metrics_lock);
		FUNC8(&dev_priv->perf.metrics_idr);

		/* We set up some ratelimit state to potentially throttle any
		 * _NOTES about spurious, invalid OA reports which we don't
		 * forward to userspace.
		 *
		 * We print a _NOTE about any throttling when closing the
		 * stream instead of waiting until driver _fini which no one
		 * would ever see.
		 *
		 * Using the same limiting factors as printk_ratelimit()
		 */
		FUNC11(&dev_priv->perf.spurious_report_rs,
				     5 * HZ, 10);
		/* Since we use a DRM_NOTE for spurious reports it would be
		 * inconsistent to let __ratelimit() automatically print a
		 * warning for throttling.
		 */
		FUNC10(&dev_priv->perf.spurious_report_rs,
				    RATELIMIT_MSG_ON_RELEASE);

		dev_priv->perf.initialized = true;
	}
}
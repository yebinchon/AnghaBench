#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct drm_display_mode {unsigned long crtc_clock; } ;
struct armada_crtc {int /*<<< orphan*/  clk; struct armada510_variant_data* variant_data; } ;
struct armada_clk_result {int div; int /*<<< orphan*/  clk; int /*<<< orphan*/  desired_clk_hz; } ;
struct armada510_variant_data {int /*<<< orphan*/  sel_clk; int /*<<< orphan*/  clks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* armada510_clk_sels ; 
 int /*<<< orphan*/  armada510_clocking ; 
 int FUNC1 (struct armada_crtc*,struct armada_clk_result*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct armada_crtc *dcrtc,
	const struct drm_display_mode *mode, uint32_t *sclk)
{
	struct armada510_variant_data *v = dcrtc->variant_data;
	unsigned long desired_khz = mode->crtc_clock;
	struct armada_clk_result res;
	int ret, idx;

	idx = FUNC1(dcrtc, &res, &armada510_clocking,
				       v->clks, FUNC0(v->clks),
				       desired_khz);
	if (idx < 0)
		return idx;

	ret = FUNC3(res.clk);
	if (ret)
		return ret;

	if (sclk) {
		FUNC4(res.clk, res.desired_clk_hz);

		*sclk = res.div | armada510_clk_sels[idx];

		/* We are now using this clock */
		v->sel_clk = res.clk;
		FUNC5(dcrtc->clk, res.clk);
	}

	FUNC2(res.clk);

	return 0;
}
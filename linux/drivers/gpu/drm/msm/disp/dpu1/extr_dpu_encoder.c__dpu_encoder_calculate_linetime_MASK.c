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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct drm_display_mode {scalar_t__ clock; int htotal; } ;
struct dpu_encoder_virt {TYPE_2__* cur_master; } ;
struct TYPE_3__ {int /*<<< orphan*/  get_line_count; } ;
struct TYPE_4__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int FUNC0 (unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_encoder_virt*,char*,scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static u32 FUNC3(struct dpu_encoder_virt *dpu_enc,
		struct drm_display_mode *mode)
{
	u64 pclk_rate;
	u32 pclk_period;
	u32 line_time;

	/*
	 * For linetime calculation, only operate on master encoder.
	 */
	if (!dpu_enc->cur_master)
		return 0;

	if (!dpu_enc->cur_master->ops.get_line_count) {
		FUNC2("get_line_count function not defined\n");
		return 0;
	}

	pclk_rate = mode->clock; /* pixel clock in kHz */
	if (pclk_rate == 0) {
		FUNC2("pclk is 0, cannot calculate line time\n");
		return 0;
	}

	pclk_period = FUNC0(1000000000ull, pclk_rate);
	if (pclk_period == 0) {
		FUNC2("pclk period is 0\n");
		return 0;
	}

	/*
	 * Line time calculation based on Pixel clock and HTOTAL.
	 * Final unit is in ns.
	 */
	line_time = (pclk_period * mode->htotal) / 1000;
	if (line_time == 0) {
		FUNC2("line time calculation is 0\n");
		return 0;
	}

	FUNC1(dpu_enc,
			"clk_rate=%lldkHz, clk_period=%d, linetime=%dns\n",
			pclk_rate, pclk_period, line_time);

	return line_time;
}
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
struct dc {TYPE_1__* vm_helper; TYPE_1__* dcn_ip; TYPE_1__* dcn_soc; TYPE_1__* bw_dceip; TYPE_1__* bw_vbios; TYPE_1__* ctx; int /*<<< orphan*/ * clk_mgr; int /*<<< orphan*/ * current_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  perf_trace; int /*<<< orphan*/  dc_bios; scalar_t__ created_bios; scalar_t__ gpio_service; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dc*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(struct dc *dc)
{
	if (dc->current_state) {
		FUNC5(dc->current_state);
		dc->current_state = NULL;
	}

	FUNC6(dc);

	if (dc->clk_mgr) {
		FUNC2(dc->clk_mgr);
		dc->clk_mgr = NULL;
	}

	FUNC3(dc);

	if (dc->ctx->gpio_service)
		FUNC1(&dc->ctx->gpio_service);

	if (dc->ctx->created_bios)
		FUNC0(&dc->ctx->dc_bios);

	FUNC4(&dc->ctx->perf_trace);

	FUNC7(dc->ctx);
	dc->ctx = NULL;

	FUNC7(dc->bw_vbios);
	dc->bw_vbios = NULL;

	FUNC7(dc->bw_dceip);
	dc->bw_dceip = NULL;

#ifdef CONFIG_DRM_AMD_DC_DCN1_0
	kfree(dc->dcn_soc);
	dc->dcn_soc = NULL;

	kfree(dc->dcn_ip);
	dc->dcn_ip = NULL;

#endif
#ifdef CONFIG_DRM_AMD_DC_DCN2_0
	kfree(dc->vm_helper);
	dc->vm_helper = NULL;

#endif
}
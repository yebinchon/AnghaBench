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
typedef  int /*<<< orphan*/  uint32_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTC_MASTER_UPDATE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dce110_timing_generator* FUNC1 (struct timing_generator*) ; 
 int /*<<< orphan*/  MASTER_UPDATE_LOCK ; 
 int /*<<< orphan*/  FUNC2 (struct dc_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCRTC_MASTER_UPDATE_LOCK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct timing_generator *tg,
		bool lock)
{
	struct dc_context *ctx = tg->ctx;
	struct dce110_timing_generator *tg110 = FUNC1(tg);
	uint32_t addr = FUNC0(mmCRTC_MASTER_UPDATE_LOCK);
	uint32_t value = FUNC2(ctx, addr);

	FUNC4(
		value,
		lock ? 1 : 0,
		CRTC_MASTER_UPDATE_LOCK,
		MASTER_UPDATE_LOCK);

	FUNC3(ctx, addr, value);
}
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
typedef  scalar_t__ uint32_t ;
struct dc_context {TYPE_1__* perf_trace; int /*<<< orphan*/  cgs_device; } ;
struct TYPE_2__ {int /*<<< orphan*/  read_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

uint32_t FUNC3(
	const struct dc_context *ctx,
	uint32_t address,
	const char *func_name)
{
	uint32_t value;
#ifdef DM_CHECK_ADDR_0
	if (address == 0) {
		DC_ERR("invalid register read; address = 0\n");
		return 0;
	}
#endif
	value = FUNC1(ctx->cgs_device, address);
	FUNC2(&ctx->perf_trace->read_count, address, value);

	return value;
}
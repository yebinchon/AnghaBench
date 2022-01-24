#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct truly_nt35597 {int /*<<< orphan*/  reset_gpio; TYPE_1__* supplies; } ;
struct TYPE_3__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/ * regulator_enable_loads ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct truly_nt35597 *ctx)
{
	int ret, i;

	for (i = 0; i < FUNC0(ctx->supplies); i++) {
		ret = FUNC3(ctx->supplies[i].consumer,
					regulator_enable_loads[i]);
		if (ret)
			return ret;
	}

	ret = FUNC2(FUNC0(ctx->supplies), ctx->supplies);
	if (ret < 0)
		return ret;

	/*
	 * Reset sequence of truly panel requires the panel to be
	 * out of reset for 10ms, followed by being held in reset
	 * for 10ms and then out again
	 */
	FUNC1(ctx->reset_gpio, 0);
	FUNC4(10000, 20000);
	FUNC1(ctx->reset_gpio, 1);
	FUNC4(10000, 20000);
	FUNC1(ctx->reset_gpio, 0);
	FUNC4(10000, 20000);

	return 0;
}
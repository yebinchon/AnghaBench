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
struct truly_nt35597 {int /*<<< orphan*/  dev; TYPE_1__* supplies; int /*<<< orphan*/  reset_gpio; } ;
struct TYPE_3__ {int /*<<< orphan*/  consumer; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/ * regulator_disable_loads ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct truly_nt35597 *ctx)
{
	int ret = 0;
	int i;

	FUNC2(ctx->reset_gpio, 1);

	for (i = 0; i < FUNC0(ctx->supplies); i++) {
		ret = FUNC4(ctx->supplies[i].consumer,
				regulator_disable_loads[i]);
		if (ret) {
			FUNC1(ctx->dev,
				"regulator_set_load failed %d\n", ret);
			return ret;
		}
	}

	ret = FUNC3(FUNC0(ctx->supplies), ctx->supplies);
	if (ret) {
		FUNC1(ctx->dev,
			"regulator_bulk_disable failed %d\n", ret);
	}
	return ret;
}
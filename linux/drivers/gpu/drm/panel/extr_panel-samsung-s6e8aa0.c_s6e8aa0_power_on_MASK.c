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
struct s6e8aa0 {int /*<<< orphan*/  reset_delay; int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  power_on_delay; int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct s6e8aa0 *ctx)
{
	int ret;

	ret = FUNC3(FUNC0(ctx->supplies), ctx->supplies);
	if (ret < 0)
		return ret;

	FUNC2(ctx->power_on_delay);

	FUNC1(ctx->reset_gpio, 0);
	FUNC4(10000, 11000);
	FUNC1(ctx->reset_gpio, 1);

	FUNC2(ctx->reset_delay);

	return 0;
}
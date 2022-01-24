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
struct sii8620 {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  clk_xtal; int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct sii8620 *ctx)
{
	int ret;

	ret = FUNC4(FUNC0(ctx->supplies), ctx->supplies);
	if (ret)
		return ret;

	FUNC5(10000, 20000);
	ret = FUNC1(ctx->clk_xtal);
	if (ret)
		return ret;

	FUNC3(100);
	FUNC2(ctx->gpio_reset, 0);
	FUNC3(100);

	return 0;
}
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
struct s6e63m0 {int /*<<< orphan*/  reset_gpio; int /*<<< orphan*/  supplies; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct s6e63m0 *ctx)
{
	int ret;

	ret = FUNC3(FUNC0(ctx->supplies), ctx->supplies);
	if (ret < 0)
		return ret;

	FUNC2(25);

	FUNC1(ctx->reset_gpio, 0);
	FUNC2(120);

	return 0;
}
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
struct fimc_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FIMC_MAX_DST ; 
 int FIMC_MAX_SRC ; 
 int /*<<< orphan*/  FUNC6 (struct fimc_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct fimc_context *ctx)
{
	int i;

	for (i = 0; i < FIMC_MAX_SRC; i++) {
		FUNC6(ctx, 0, FUNC2(i));
		FUNC6(ctx, 0, FUNC0(i));
		FUNC6(ctx, 0, FUNC1(i));
	}

	for (i = 0; i < FIMC_MAX_DST; i++) {
		FUNC6(ctx, 0, FUNC5(i));
		FUNC6(ctx, 0, FUNC3(i));
		FUNC6(ctx, 0, FUNC4(i));
	}
}
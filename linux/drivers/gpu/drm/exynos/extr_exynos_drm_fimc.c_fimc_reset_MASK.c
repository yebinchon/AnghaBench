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
struct fimc_context {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct fimc_context*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC3(struct fimc_context *ctx)
{
	/* reset h/w block */
	FUNC1(ctx);

	/* reset scaler capability */
	FUNC2(&ctx->sc, 0x0, sizeof(ctx->sc));

	FUNC0(ctx);
}
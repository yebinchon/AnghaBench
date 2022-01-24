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
struct vmw_validation_context {scalar_t__ res_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vmw_validation_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmw_validation_context*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmw_validation_context*) ; 

void FUNC4(struct vmw_validation_context *ctx)
{
	FUNC1(ctx);
	FUNC2(ctx, true);
	if (ctx->res_mutex)
		FUNC0(ctx->res_mutex);
	FUNC3(ctx);
}
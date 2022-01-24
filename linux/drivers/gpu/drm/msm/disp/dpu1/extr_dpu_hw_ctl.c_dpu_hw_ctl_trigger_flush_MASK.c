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
struct dpu_hw_ctl {int /*<<< orphan*/  pending_flush_mask; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTL_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dpu_hw_ctl*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct dpu_hw_ctl *ctx)
{
	FUNC2(ctx->pending_flush_mask,
				     FUNC1(ctx));
	FUNC0(&ctx->hw, CTL_FLUSH, ctx->pending_flush_mask);
}
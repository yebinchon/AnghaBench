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
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {int mixer_count; struct dpu_hw_blk_reg_map hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dpu_hw_blk_reg_map*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ LM_0 ; 

__attribute__((used)) static void FUNC5(struct dpu_hw_ctl *ctx)
{
	struct dpu_hw_blk_reg_map *c = &ctx->hw;
	int i;

	for (i = 0; i < ctx->mixer_count; i++) {
		FUNC4(c, FUNC0(LM_0 + i), 0);
		FUNC4(c, FUNC1(LM_0 + i), 0);
		FUNC4(c, FUNC2(LM_0 + i), 0);
		FUNC4(c, FUNC3(LM_0 + i), 0);
	}
}
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
typedef  scalar_t__ u32 ;
struct dpu_hw_blk_reg_map {int log_mask; scalar_t__ blk_off; scalar_t__ base_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,scalar_t__,scalar_t__) ; 
 int dpu_hw_util_log_mask ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 

void FUNC2(struct dpu_hw_blk_reg_map *c,
		u32 reg_off,
		u32 val,
		const char *name)
{
	/* don't need to mutex protect this */
	if (c->log_mask & dpu_hw_util_log_mask)
		FUNC0("[%s:0x%X] <= 0x%X\n",
				name, c->blk_off + reg_off, val);
	FUNC1(val, c->base_off + c->blk_off + reg_off);
}
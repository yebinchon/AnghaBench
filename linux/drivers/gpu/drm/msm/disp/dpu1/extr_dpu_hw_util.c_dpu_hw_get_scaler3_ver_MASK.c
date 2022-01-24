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
struct dpu_hw_blk_reg_map {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dpu_hw_blk_reg_map*,scalar_t__) ; 
 scalar_t__ QSEED3_HW_VERSION ; 

u32 FUNC1(struct dpu_hw_blk_reg_map *c,
			u32 scaler_offset)
{
	return FUNC0(c, QSEED3_HW_VERSION + scaler_offset);
}
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
struct dpu_hw_mdp {struct dpu_hw_blk_reg_map hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dpu_hw_blk_reg_map*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HDMI_DP_CORE_SELECT ; 

__attribute__((used)) static void FUNC1(struct dpu_hw_mdp *mdp)
{
	struct dpu_hw_blk_reg_map *c;

	if (!mdp)
		return;

	c = &mdp->hw;

	FUNC0(c, HDMI_DP_CORE_SELECT, 0x1);
}
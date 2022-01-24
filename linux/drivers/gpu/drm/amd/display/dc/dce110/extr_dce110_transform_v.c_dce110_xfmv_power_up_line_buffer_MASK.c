#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct transform {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctx; } ;
struct dce_transform {TYPE_1__ base; int /*<<< orphan*/  lb_memory_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBV_MEMORY_CTRL ; 
 int /*<<< orphan*/  LB_MEMORY_CONFIG ; 
 int /*<<< orphan*/  LB_MEMORY_SIZE ; 
 struct dce_transform* FUNC0 (struct transform*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmLBV_MEMORY_CTRL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct transform *xfm)
{
	struct dce_transform *xfm_dce = FUNC0(xfm);
	uint32_t value;

	value = FUNC1(xfm_dce->base.ctx, mmLBV_MEMORY_CTRL);

	/*Use all three pieces of memory always*/
	FUNC3(value, 0, LBV_MEMORY_CTRL, LB_MEMORY_CONFIG);
	/*hard coded number DCE11 1712(0x6B0) Partitions: 720/960/1712*/
	FUNC3(value, xfm_dce->lb_memory_size, LBV_MEMORY_CTRL,
			LB_MEMORY_SIZE);

	FUNC2(xfm_dce->base.ctx, mmLBV_MEMORY_CTRL, value);

	return true;
}
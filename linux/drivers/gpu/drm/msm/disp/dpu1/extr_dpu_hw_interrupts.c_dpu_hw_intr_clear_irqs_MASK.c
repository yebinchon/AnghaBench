#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dpu_hw_intr {int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  clr_off; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 TYPE_1__* dpu_intr_set ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct dpu_hw_intr *intr)
{
	int i;

	if (!intr)
		return -EINVAL;

	for (i = 0; i < FUNC0(dpu_intr_set); i++)
		FUNC1(&intr->hw, dpu_intr_set[i].clr_off, 0xffffffff);

	/* ensure register writes go through */
	FUNC2();

	return 0;
}
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
typedef  int /*<<< orphan*/  u64 ;
struct hfi1_devdata {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  off; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EBUSY ; 
 TYPE_1__* lcb_cache ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct hfi1_devdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hfi1_devdata *dd)
{
	int i;
	int ret;
	u64 val;

	for (i = 0; i < FUNC0(lcb_cache); i++) {
		ret = FUNC2(dd, lcb_cache[i].off, &val);

		/* Update if we get good data */
		if (FUNC1(ret != -EBUSY))
			lcb_cache[i].val = val;
	}
}
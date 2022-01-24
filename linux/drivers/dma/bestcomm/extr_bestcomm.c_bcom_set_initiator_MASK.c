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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 scalar_t__ BCOM_INITIATOR_ALWAYS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 int FUNC6 (int) ; 

void
FUNC7(int task, int initiator)
{
	int i;
	int num_descs;
	u32 *desc;
	int next_drd_has_initiator;

	FUNC4(task, initiator);

	/* Just setting tcr is apparently not enough due to some problem */
	/* with it. So we just go thru all the microcode and replace in  */
	/* the DRD directly */

	desc = FUNC5(task);
	next_drd_has_initiator = 1;
	num_descs = FUNC6(task);

	for (i=0; i<num_descs; i++, desc++) {
		if (!FUNC1(*desc))
			continue;
		if (next_drd_has_initiator)
			if (FUNC0(*desc) != BCOM_INITIATOR_ALWAYS)
				FUNC3(desc, initiator);
		next_drd_has_initiator = !FUNC2(*desc);
	}
}
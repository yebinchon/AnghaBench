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
struct paace {int /*<<< orphan*/  impl_attr; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  PAACE_IA_CID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct paace* FUNC1 (int) ; 
 struct paace* FUNC2 (struct paace*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int  FUNC5(int liodn, u32 subwin, u32 value)
{
	struct paace *paace;

	paace = FUNC1(liodn);
	if (!paace) {
		FUNC3("Invalid liodn entry\n");
		return -ENOENT;
	}
	if (subwin) {
		paace = FUNC2(paace, subwin - 1);
		if (!paace)
			return -ENOENT;
	}
	FUNC4(paace->impl_attr, PAACE_IA_CID, value);

	FUNC0();

	return 0;
}
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
struct sdma_engine {int /*<<< orphan*/  ahg_bits; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sdma_engine*,int) ; 

int FUNC5(struct sdma_engine *sde)
{
	int nr;
	int oldbit;

	if (!sde) {
		FUNC4(sde, -EINVAL);
		return -EINVAL;
	}
	while (1) {
		nr = FUNC2(FUNC0(sde->ahg_bits));
		if (nr > 31) {
			FUNC4(sde, -ENOSPC);
			return -ENOSPC;
		}
		oldbit = FUNC3(nr, &sde->ahg_bits);
		if (!oldbit)
			break;
		FUNC1();
	}
	FUNC4(sde, nr);
	return nr;
}
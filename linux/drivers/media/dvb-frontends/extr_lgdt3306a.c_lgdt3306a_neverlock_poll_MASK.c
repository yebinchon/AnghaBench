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
struct lgdt3306a_state {int dummy; } ;
typedef  enum lgdt3306a_neverlock_status { ____Placeholder_lgdt3306a_neverlock_status } lgdt3306a_neverlock_status ;

/* Variables and functions */
 int LG3306_NL_FAIL ; 
 int LG3306_NL_LOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct lgdt3306a_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static enum lgdt3306a_neverlock_status
FUNC3(struct lgdt3306a_state *state)
{
	enum lgdt3306a_neverlock_status NLLockStatus = LG3306_NL_FAIL;
	int	i;

	for (i = 0; i < 5; i++) {
		FUNC2(30);

		NLLockStatus = FUNC1(state);

		if (NLLockStatus == LG3306_NL_LOCK) {
			FUNC0("NL_LOCK(%d)\n", i);
			return NLLockStatus;
		}
	}
	FUNC0("NLLockStatus=%d\n", NLLockStatus);
	return NLLockStatus;
}
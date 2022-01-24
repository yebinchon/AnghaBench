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
typedef  int u64 ;
struct TYPE_2__ {int /*<<< orphan*/ * completion; int /*<<< orphan*/ * orh; } ;
struct nitrox_softreq {TYPE_1__ resp; } ;

/* Variables and functions */
 int PENDING_SIG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static bool FUNC4(struct nitrox_softreq *sr)
{
	u64 orh = FUNC0(*sr->resp.orh);
	unsigned long timeout = jiffies + FUNC1(1);

	if ((orh != PENDING_SIG) && (orh & 0xff))
		return true;

	while (FUNC0(*sr->resp.completion) == PENDING_SIG) {
		if (FUNC3(jiffies, timeout)) {
			FUNC2("comp not done\n");
			return false;
		}
	}

	return true;
}
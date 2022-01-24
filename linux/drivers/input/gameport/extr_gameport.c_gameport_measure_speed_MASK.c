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
typedef  unsigned int u64 ;
struct gameport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GAMEPORT_MODE_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct gameport*) ; 
 scalar_t__ FUNC1 (struct gameport*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gameport*) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 

__attribute__((used)) static int FUNC7(struct gameport *gameport)
{
	unsigned int i, t, tx;
	u64 t1, t2, t3;
	unsigned long flags;

	if (FUNC1(gameport, NULL, GAMEPORT_MODE_RAW))
		return 0;

	tx = ~0;

	for (i = 0; i < 50; i++) {
		FUNC5(flags);
		t1 = FUNC3();
		for (t = 0; t < 50; t++)
			FUNC2(gameport);
		t2 = FUNC3();
		t3 = FUNC3();
		FUNC4(flags);
		FUNC6(i * 10);
		t = (t2 - t1) - (t3 - t2);
		if (t < tx)
			tx = t;
	}

	FUNC0(gameport);
	t = 1000000 * 50;
	if (tx)
		t /= tx;
	return t;
}
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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ x ; 

__attribute__((used)) static int FUNC7(void *dummy)
{
	FUNC2(&x.lock);
	FUNC6();
	FUNC3(&x.lock);

	for (;;) {
		FUNC1(8000);
		if (FUNC0())
			break;

		FUNC2(&x.lock);
		FUNC4();
		FUNC3(&x.lock);
	}

	FUNC2(&x.lock);
	FUNC5();
	FUNC3(&x.lock);

	return 0;
}
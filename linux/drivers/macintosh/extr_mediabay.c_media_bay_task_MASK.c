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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  sleeping; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_POLL_DELAY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int media_bay_count ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* media_bays ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *x)
{
	int	i;

	while (!FUNC0()) {
		for (i = 0; i < media_bay_count; ++i) {
			FUNC3(&media_bays[i].lock);
			if (!media_bays[i].sleeping)
				FUNC1(i);
			FUNC4(&media_bays[i].lock);
		}

		FUNC2(MB_POLL_DELAY);
	}
	return 0;
}
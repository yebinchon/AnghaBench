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
struct TYPE_3__ {int /*<<< orphan*/  kobj; int /*<<< orphan*/ * pools; } ;

/* Variables and functions */
 int /*<<< orphan*/  FREE_ALL_PAGES ; 
 int NUM_POOLS ; 
 TYPE_1__* _manager ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(void)
{
	int i;

	FUNC1("Finalizing pool allocator\n");
	FUNC3(_manager);

	/* OK to use static buffer since global mutex is no longer used. */
	for (i = 0; i < NUM_POOLS; ++i)
		FUNC2(&_manager->pools[i], FREE_ALL_PAGES, true);

	FUNC0(&_manager->kobj);
	_manager = NULL;
}
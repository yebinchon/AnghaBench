#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  mode; int /*<<< orphan*/  os_unlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__** etmdrvdata ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	if (!etmdrvdata[cpu])
		return 0;

	FUNC3(&etmdrvdata[cpu]->spinlock);
	if (!etmdrvdata[cpu]->os_unlock)
		FUNC1(etmdrvdata[cpu]);

	if (FUNC2(&etmdrvdata[cpu]->mode))
		FUNC0(etmdrvdata[cpu]);
	FUNC4(&etmdrvdata[cpu]->spinlock);
	return 0;
}
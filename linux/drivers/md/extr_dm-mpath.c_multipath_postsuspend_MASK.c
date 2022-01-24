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
struct multipath {int /*<<< orphan*/  work_mutex; } ;
struct dm_target {struct multipath* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti)
{
	struct multipath *m = ti->private;

	FUNC1(&m->work_mutex);
	FUNC0(m);
	FUNC2(&m->work_mutex);
}
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
struct dm_integrity_range {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dm_integrity_c {TYPE_1__ endio_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_integrity_c*,struct dm_integrity_range*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct dm_integrity_c *ic, struct dm_integrity_range *range)
{
	unsigned long flags;

	FUNC1(&ic->endio_wait.lock, flags);
	FUNC0(ic, range);
	FUNC2(&ic->endio_wait.lock, flags);
}
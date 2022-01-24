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
struct sync_timeline {int /*<<< orphan*/  sync_timeline_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  sync_timeline_list_lock ; 

void FUNC3(struct sync_timeline *obj)
{
	unsigned long flags;

	FUNC1(&sync_timeline_list_lock, flags);
	FUNC0(&obj->sync_timeline_list);
	FUNC2(&sync_timeline_list_lock, flags);
}
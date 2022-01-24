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
struct TYPE_2__ {int (* callback ) (int,TYPE_1__*) ;} ;
struct mcast_member {TYPE_1__ multicast; int /*<<< orphan*/  list; } ;
struct mcast_group {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct mcast_group *group, struct mcast_member *member,
		     int status)
{
	FUNC1(&group->lock);
	FUNC0(&member->list);
	FUNC2(&group->lock);
	return member->multicast.callback(status, &member->multicast);
}
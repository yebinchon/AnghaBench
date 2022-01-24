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
struct mddev {scalar_t__ queue; int /*<<< orphan*/  thread; TYPE_1__* pers; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* quiesce ) (struct mddev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,int) ; 

__attribute__((used)) static void FUNC5(struct mddev *mddev)
{
	FUNC1(mddev);
	if (mddev->pers && mddev->pers->quiesce) {
		mddev->pers->quiesce(mddev, 1);
		mddev->pers->quiesce(mddev, 0);
	}
	FUNC2(&mddev->thread);
	if (mddev->queue)
		FUNC0(mddev->queue); /* the unplug fn references 'conf'*/
}
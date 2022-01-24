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
struct i40iw_ib_device {int /*<<< orphan*/  ibdev; TYPE_1__* iwdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  use_count; int /*<<< orphan*/  close_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct i40iw_ib_device *iwibdev)
{
	FUNC2(&iwibdev->ibdev);
	FUNC3(iwibdev->iwdev->close_wq,
			   !FUNC0(&iwibdev->iwdev->use_count),
			   I40IW_EVENT_TIMEOUT);
	FUNC1(&iwibdev->ibdev);
}
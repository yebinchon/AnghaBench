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
typedef  int /*<<< orphan*/  wait_queue_entry_t ;
struct i40iw_sc_dev {int vchnl_up; int /*<<< orphan*/  vf_reqs; struct i40iw_device* back_dev; } ;
struct i40iw_device {int /*<<< orphan*/  vchnl_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40IW_VCHNL_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct i40iw_sc_dev *dev)
{
	struct i40iw_device *iwdev;
	wait_queue_entry_t wait;

	iwdev = dev->back_dev;

	if (!FUNC5(&dev->vf_reqs) &&
	    (FUNC1(&iwdev->vchnl_msgs) == 0))
		return true; /* virtual channel is clear */

	FUNC2(&wait);
	FUNC0(&dev->vf_reqs, &wait);

	if (!FUNC4(dev->vf_reqs,
				(FUNC1(&iwdev->vchnl_msgs) == 0),
				I40IW_VCHNL_EVENT_TIMEOUT))
		dev->vchnl_up = false;

	FUNC3(&dev->vf_reqs, &wait);

	return dev->vchnl_up;
}
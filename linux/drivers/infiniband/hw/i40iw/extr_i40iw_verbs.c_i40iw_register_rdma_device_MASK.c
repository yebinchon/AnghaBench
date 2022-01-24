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
struct i40iw_ib_device {int /*<<< orphan*/  ibdev; } ;
struct i40iw_device {struct i40iw_ib_device* iwibdev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  i40iw_attr_group ; 
 struct i40iw_ib_device* FUNC0 (struct i40iw_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct i40iw_device *iwdev)
{
	int ret;
	struct i40iw_ib_device *iwibdev;

	iwdev->iwibdev = FUNC0(iwdev);
	if (!iwdev->iwibdev)
		return -ENOMEM;
	iwibdev = iwdev->iwibdev;
	FUNC4(&iwibdev->ibdev, &i40iw_attr_group);
	ret = FUNC2(&iwibdev->ibdev, iwdev->netdev, 1);
	if (ret)
		goto error;

	ret = FUNC3(&iwibdev->ibdev, "i40iw%d");
	if (ret)
		goto error;

	return 0;
error:
	FUNC1(&iwdev->iwibdev->ibdev);
	return ret;
}
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
struct mousedev {int opened_by_mixdev; int /*<<< orphan*/  mixdev_node; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; scalar_t__ open; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* mousedev_mix ; 
 int /*<<< orphan*/  mousedev_mix_list ; 
 int FUNC2 (struct mousedev*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mousedev *mousedev)
{
	int retval;

	retval = FUNC3(&mousedev_mix->mutex);
	if (retval)
		return retval;

	if (mousedev_mix->open) {
		retval = FUNC2(mousedev);
		if (retval)
			goto out;

		mousedev->opened_by_mixdev = true;
	}

	FUNC0(&mousedev->dev);
	FUNC1(&mousedev->mixdev_node, &mousedev_mix_list);

 out:
	FUNC4(&mousedev_mix->mutex);
	return retval;
}
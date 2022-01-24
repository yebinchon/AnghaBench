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
struct sirf_data {int open; int /*<<< orphan*/  gdev_mutex; struct serdev_device* serdev; } ;
struct serdev_device {int /*<<< orphan*/  dev; } ;
struct gnss_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct sirf_data* FUNC1 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sirf_data*) ; 
 int FUNC7 (struct sirf_data*) ; 

__attribute__((used)) static int FUNC8(struct gnss_device *gdev)
{
	struct sirf_data *data = FUNC1(gdev);
	struct serdev_device *serdev = data->serdev;
	int ret;

	FUNC2(&data->gdev_mutex);
	data->open = true;
	FUNC3(&data->gdev_mutex);

	ret = FUNC7(data);
	if (ret) {
		FUNC2(&data->gdev_mutex);
		data->open = false;
		FUNC3(&data->gdev_mutex);
		return ret;
	}

	ret = FUNC4(&serdev->dev);
	if (ret < 0) {
		FUNC0(&gdev->dev, "failed to runtime resume: %d\n", ret);
		FUNC5(&serdev->dev);
		goto err_close;
	}

	return 0;

err_close:
	FUNC6(data);

	FUNC2(&data->gdev_mutex);
	data->open = false;
	FUNC3(&data->gdev_mutex);

	return ret;
}
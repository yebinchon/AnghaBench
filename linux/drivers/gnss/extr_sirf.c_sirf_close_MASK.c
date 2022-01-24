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
struct gnss_device {int dummy; } ;

/* Variables and functions */
 struct sirf_data* FUNC0 (struct gnss_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sirf_data*) ; 

__attribute__((used)) static void FUNC5(struct gnss_device *gdev)
{
	struct sirf_data *data = FUNC0(gdev);
	struct serdev_device *serdev = data->serdev;

	FUNC4(data);

	FUNC3(&serdev->dev);

	FUNC1(&data->gdev_mutex);
	data->open = false;
	FUNC2(&data->gdev_mutex);
}
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
struct sirf_data {int serdev_count; int /*<<< orphan*/  serdev_mutex; int /*<<< orphan*/  serdev; int /*<<< orphan*/  speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct sirf_data *data)
{
	int ret = 0;

	FUNC0(&data->serdev_mutex);
	if (++data->serdev_count == 1) {
		ret = FUNC2(data->serdev);
		if (ret) {
			data->serdev_count--;
			goto out_unlock;
		}

		FUNC3(data->serdev, data->speed);
		FUNC4(data->serdev, false);
	}

out_unlock:
	FUNC1(&data->serdev_mutex);

	return ret;
}
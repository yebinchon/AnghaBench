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
struct msc {int /*<<< orphan*/  user_count; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  iter_list; } ;
struct intel_th_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct msc* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct msc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct intel_th_device *thdev)
{
	struct msc *msc = FUNC2(&thdev->dev);
	int ret = -EBUSY;

	if (!FUNC1(&msc->user_count))
		return -ENODEV;

	FUNC5(&msc->buf_mutex);

	/* if there are readers, refuse */
	if (FUNC3(&msc->iter_list))
		ret = FUNC4(msc);

	FUNC6(&msc->buf_mutex);

	if (ret)
		FUNC0(&msc->user_count);

	return ret;
}
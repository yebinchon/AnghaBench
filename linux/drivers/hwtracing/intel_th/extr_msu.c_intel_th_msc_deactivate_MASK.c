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
struct msc {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  user_count; scalar_t__ enabled; } ;
struct intel_th_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msc* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct msc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct intel_th_device *thdev)
{
	struct msc *msc = FUNC1(&thdev->dev);

	FUNC3(&msc->buf_mutex);
	if (msc->enabled) {
		FUNC2(msc);
		FUNC0(&msc->user_count);
	}
	FUNC4(&msc->buf_mutex);
}
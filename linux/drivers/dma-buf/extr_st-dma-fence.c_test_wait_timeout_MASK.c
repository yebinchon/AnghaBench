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
struct wait_timer {int /*<<< orphan*/  f; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait_timer ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct wait_timer wt;
	int err = -EINVAL;

	FUNC10(&wt.timer, wait_timer, 0);

	wt.f = FUNC5();
	if (!wt.f)
		return -ENOMEM;

	if (FUNC4(wt.f, false, 1) != -ETIME) {
		FUNC7("Wait reported complete before being signaled\n");
		goto err_free;
	}

	FUNC6(&wt.timer, jiffies + 1);

	if (FUNC4(wt.f, false, 2) == -ETIME) {
		if (FUNC9(&wt.timer)) {
			FUNC8("Timer did not fire within the jiffie!\n");
			err = 0; /* not our fault! */
		} else {
			FUNC7("Wait reported incomplete after timeout\n");
		}
		goto err_free;
	}

	err = 0;
err_free:
	FUNC0(&wt.timer);
	FUNC1(&wt.timer);
	FUNC3(wt.f);
	FUNC2(wt.f);
	return err;
}
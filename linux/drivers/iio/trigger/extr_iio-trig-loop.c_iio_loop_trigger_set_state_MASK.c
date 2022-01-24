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
struct iio_trigger {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct iio_loop_info {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  iio_loop_thread ; 
 struct iio_loop_info* FUNC3 (struct iio_trigger*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iio_trigger*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct iio_trigger *trig, bool state)
{
	struct iio_loop_info *loop_trig = FUNC3(trig);

	if (state) {
		loop_trig->task = FUNC4(iio_loop_thread,
					      trig, trig->name);
		if (FUNC0(loop_trig->task)) {
			FUNC2(&trig->dev,
				"failed to create trigger loop thread\n");
			return FUNC1(loop_trig->task);
		}
	} else {
		FUNC5(loop_trig->task);
	}

	return 0;
}
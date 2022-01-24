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
struct dm_kcopyd_throttle {unsigned int last_jiffies; unsigned int io_period; unsigned int total_period; scalar_t__ num_io_jobs; int /*<<< orphan*/  throttle; } ;

/* Variables and functions */
 int ACCOUNT_INTERVAL_SHIFT ; 
 int MAX_SLEEPS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SLEEP_MSEC ; 
 int FUNC1 (int) ; 
 unsigned int jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  throttle_spinlock ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct dm_kcopyd_throttle *t)
{
	unsigned throttle, now, difference;
	int slept = 0, skew;

	if (FUNC6(!t))
		return;

try_again:
	FUNC4(&throttle_spinlock);

	throttle = FUNC0(t->throttle);

	if (FUNC2(throttle >= 100))
		goto skip_limit;

	now = jiffies;
	difference = now - t->last_jiffies;
	t->last_jiffies = now;
	if (t->num_io_jobs)
		t->io_period += difference;
	t->total_period += difference;

	/*
	 * Maintain sane values if we got a temporary overflow.
	 */
	if (FUNC6(t->io_period > t->total_period))
		t->io_period = t->total_period;

	if (FUNC6(t->total_period >= (1 << ACCOUNT_INTERVAL_SHIFT))) {
		int shift = FUNC1(t->total_period >> ACCOUNT_INTERVAL_SHIFT);
		t->total_period >>= shift;
		t->io_period >>= shift;
	}

	skew = t->io_period - throttle * t->total_period / 100;

	if (FUNC6(skew > 0) && slept < MAX_SLEEPS) {
		slept++;
		FUNC5(&throttle_spinlock);
		FUNC3(SLEEP_MSEC);
		goto try_again;
	}

skip_limit:
	t->num_io_jobs++;

	FUNC5(&throttle_spinlock);
}
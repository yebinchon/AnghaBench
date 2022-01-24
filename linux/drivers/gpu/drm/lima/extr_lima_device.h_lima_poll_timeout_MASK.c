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
struct lima_ip {int dummy; } ;
typedef  scalar_t__ (* lima_poll_func_t ) (struct lima_ip*) ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static inline int FUNC5(struct lima_ip *ip, lima_poll_func_t func,
				    int sleep_us, int timeout_us)
{
	ktime_t timeout = FUNC0(FUNC2(), timeout_us);

	FUNC3(sleep_us);
	while (1) {
		if (func(ip))
			return 0;

		if (timeout_us && FUNC1(FUNC2(), timeout) > 0)
			return -ETIMEDOUT;

		if (sleep_us)
			FUNC4((sleep_us >> 2) + 1, sleep_us);
	}
	return 0;
}
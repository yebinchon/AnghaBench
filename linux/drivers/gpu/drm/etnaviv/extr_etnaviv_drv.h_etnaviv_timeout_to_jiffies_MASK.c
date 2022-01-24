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
struct timespec64 {int dummy; } ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 scalar_t__ FUNC1 (struct timespec64*,struct timespec64*) ; 
 struct timespec64 FUNC2 (struct timespec64,struct timespec64) ; 
 unsigned long FUNC3 (struct timespec64*) ; 
 struct timespec64 FUNC4 (struct timespec const) ; 

__attribute__((used)) static inline unsigned long FUNC5(
	const struct timespec *timeout)
{
	struct timespec64 ts, to;

	to = FUNC4(*timeout);

	FUNC0(&ts);

	/* timeouts before "now" have already expired */
	if (FUNC1(&to, &ts) <= 0)
		return 0;

	ts = FUNC2(to, ts);

	return FUNC3(&ts);
}
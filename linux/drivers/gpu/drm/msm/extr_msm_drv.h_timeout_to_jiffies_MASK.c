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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 struct timespec FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct timespec*) ; 

__attribute__((used)) static inline unsigned long FUNC5(const ktime_t *timeout)
{
	ktime_t now = FUNC1();
	unsigned long remaining_jiffies;

	if (FUNC0(*timeout, now) < 0) {
		remaining_jiffies = 0;
	} else {
		ktime_t rem = FUNC2(*timeout, now);
		struct timespec ts = FUNC3(rem);
		remaining_jiffies = FUNC4(&ts);
	}

	return remaining_jiffies;
}
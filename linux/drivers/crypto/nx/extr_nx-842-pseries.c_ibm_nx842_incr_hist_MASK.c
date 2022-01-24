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
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 scalar_t__ NX842_HIST_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(atomic64_t *times, unsigned int time)
{
	int bucket = FUNC1(time);

	if (bucket)
		bucket = FUNC2((NX842_HIST_SLOTS - 1), bucket - 1);

	FUNC0(&times[bucket]);
}
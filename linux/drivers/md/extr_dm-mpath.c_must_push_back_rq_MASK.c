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
struct multipath {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPATHF_QUEUE_IF_NO_PATH ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct multipath*,unsigned long) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static bool FUNC3(struct multipath *m)
{
	unsigned long flags = FUNC0(m->flags);
	return FUNC2(MPATHF_QUEUE_IF_NO_PATH, &flags) || FUNC1(m, flags);
}
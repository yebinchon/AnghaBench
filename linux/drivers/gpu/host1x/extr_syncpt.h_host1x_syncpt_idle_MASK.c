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
struct host1x_syncpt {int /*<<< orphan*/  max_val; int /*<<< orphan*/  min_val; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static inline bool FUNC2(struct host1x_syncpt *sp)
{
	int min, max;
	FUNC1();
	min = FUNC0(&sp->min_val);
	max = FUNC0(&sp->max_val);
	return (min == max);
}
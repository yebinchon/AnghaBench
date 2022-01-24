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
struct ad5758_state {scalar_t__ gpio_reset; } ;

/* Variables and functions */
 int FUNC0 (struct ad5758_state*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct ad5758_state *st)
{
	if (st->gpio_reset) {
		FUNC1(st->gpio_reset, 0);
		FUNC2(100, 1000);
		FUNC1(st->gpio_reset, 1);
		FUNC2(100, 1000);

		return 0;
	} else {
		/* Perform a software reset */
		return FUNC0(st);
	}
}
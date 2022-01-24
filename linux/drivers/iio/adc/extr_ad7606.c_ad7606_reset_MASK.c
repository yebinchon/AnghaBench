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
struct ad7606_state {scalar_t__ gpio_reset; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct ad7606_state *st)
{
	if (st->gpio_reset) {
		FUNC0(st->gpio_reset, 1);
		FUNC1(100); /* t_reset >= 100ns */
		FUNC0(st->gpio_reset, 0);
		return 0;
	}

	return -ENODEV;
}
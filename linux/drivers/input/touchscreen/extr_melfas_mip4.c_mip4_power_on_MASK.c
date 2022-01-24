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
struct mip4_ts {scalar_t__ gpio_ce; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct mip4_ts *ts)
{
	if (ts->gpio_ce) {
		FUNC0(ts->gpio_ce, 1);

		/* Booting delay : 200~300ms */
		FUNC1(200 * 1000, 300 * 1000);
	}

	return 0;
}
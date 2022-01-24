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
struct timer_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  hil_mlcs_kicker ; 
 int hil_mlcs_probe ; 
 int /*<<< orphan*/  hil_mlcs_tasklet ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct timer_list *unused)
{
	hil_mlcs_probe = 1;
	FUNC1(&hil_mlcs_tasklet);
	/* Re-insert the periodic task. */
	if (!FUNC2(&hil_mlcs_kicker))
		FUNC0(&hil_mlcs_kicker, jiffies + HZ);
}
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
typedef  int /*<<< orphan*/  u32 ;
struct host1x {int /*<<< orphan*/  intr_mutex; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct host1x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  syncpt_thresh_work ; 

void FUNC5(struct host1x *host)
{
	u32 hz = FUNC1(host->clk);
	int err;

	FUNC3(&host->intr_mutex);
	err = FUNC2(host, FUNC0(hz, 1000000),
					    syncpt_thresh_work);
	if (err) {
		FUNC4(&host->intr_mutex);
		return;
	}
	FUNC4(&host->intr_mutex);
}
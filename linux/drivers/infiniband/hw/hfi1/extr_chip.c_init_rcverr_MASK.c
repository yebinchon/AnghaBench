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
struct hfi1_devdata {int /*<<< orphan*/  rcverr_timer; scalar_t__ rcv_ovfl_cnt; } ;

/* Variables and functions */
 int HZ ; 
 int RCVERR_CHECK_TIME ; 
 scalar_t__ jiffies ; 
 int FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  update_rcverr_timer ; 

__attribute__((used)) static int FUNC2(struct hfi1_devdata *dd)
{
	FUNC1(&dd->rcverr_timer, update_rcverr_timer, 0);
	/* Assume the hardware counter has been reset */
	dd->rcv_ovfl_cnt = 0;
	return FUNC0(&dd->rcverr_timer, jiffies + HZ * RCVERR_CHECK_TIME);
}
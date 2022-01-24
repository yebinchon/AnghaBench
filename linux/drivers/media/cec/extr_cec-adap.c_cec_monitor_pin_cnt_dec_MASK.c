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
struct cec_adapter {scalar_t__ monitor_pin_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adap_monitor_pin_enable ; 
 int /*<<< orphan*/  FUNC1 (struct cec_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct cec_adapter *adap)
{
	adap->monitor_pin_cnt--;
	if (adap->monitor_pin_cnt == 0)
		FUNC0(FUNC1(adap, adap_monitor_pin_enable, 0));
}
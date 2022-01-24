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
struct dw_i2c_dev {unsigned long (* get_clk_rate_khz ) (struct dw_i2c_dev*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned long FUNC1 (struct dw_i2c_dev*) ; 

unsigned long FUNC2(struct dw_i2c_dev *dev)
{
	/*
	 * Clock is not necessary if we got LCNT/HCNT values directly from
	 * the platform code.
	 */
	if (FUNC0(!dev->get_clk_rate_khz))
		return 0;
	return dev->get_clk_rate_khz(dev);
}
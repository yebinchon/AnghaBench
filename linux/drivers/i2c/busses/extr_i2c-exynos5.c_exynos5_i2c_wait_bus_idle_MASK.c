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
typedef  int u32 ;
struct exynos5_i2c {scalar_t__ regs; } ;

/* Variables and functions */
 int EBUSY ; 
 int HSI2C_MASTER_BUSY ; 
 scalar_t__ HSI2C_TRANS_STATUS ; 
 int jiffies ; 
 int FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct exynos5_i2c *i2c)
{
	unsigned long stop_time;
	u32 trans_status;

	/* wait for 100 milli seconds for the bus to be idle */
	stop_time = jiffies + FUNC0(100) + 1;
	do {
		trans_status = FUNC1(i2c->regs + HSI2C_TRANS_STATUS);
		if (!(trans_status & HSI2C_MASTER_BUSY))
			return 0;

		FUNC3(50, 200);
	} while (FUNC2(jiffies, stop_time));

	return -EBUSY;
}
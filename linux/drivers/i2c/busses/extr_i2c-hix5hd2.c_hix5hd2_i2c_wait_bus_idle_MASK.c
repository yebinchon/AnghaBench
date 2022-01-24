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
struct hix5hd2_i2c_priv {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int I2C_BUSY ; 
 int FUNC0 (struct hix5hd2_i2c_priv*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (int) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct hix5hd2_i2c_priv *priv)
{
	unsigned long stop_time;
	u32 int_status;

	/* wait for 100 milli seconds for the bus to be idle */
	stop_time = jiffies + FUNC1(100);
	do {
		int_status = FUNC0(priv);
		if (!(int_status & I2C_BUSY))
			return 0;

		FUNC3(50, 200);
	} while (FUNC2(jiffies, stop_time));

	return -EBUSY;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct tegra_i2c_dev {int /*<<< orphan*/  dev; TYPE_1__* hw; } ;
struct TYPE_2__ {scalar_t__ has_mst_fifo; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 unsigned long HZ ; 
 unsigned int I2C_FIFO_CONTROL ; 
 int I2C_FIFO_CONTROL_RX_FLUSH ; 
 int I2C_FIFO_CONTROL_TX_FLUSH ; 
 unsigned int I2C_MST_FIFO_CONTROL ; 
 int I2C_MST_FIFO_CONTROL_RX_FLUSH ; 
 int I2C_MST_FIFO_CONTROL_TX_FLUSH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct tegra_i2c_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct tegra_i2c_dev*,int,unsigned int) ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct tegra_i2c_dev *i2c_dev)
{
	unsigned long timeout = jiffies + HZ;
	unsigned int offset;
	u32 mask, val;

	if (i2c_dev->hw->has_mst_fifo) {
		mask = I2C_MST_FIFO_CONTROL_TX_FLUSH |
		       I2C_MST_FIFO_CONTROL_RX_FLUSH;
		offset = I2C_MST_FIFO_CONTROL;
	} else {
		mask = I2C_FIFO_CONTROL_TX_FLUSH |
		       I2C_FIFO_CONTROL_RX_FLUSH;
		offset = I2C_FIFO_CONTROL;
	}

	val = FUNC1(i2c_dev, offset);
	val |= mask;
	FUNC2(i2c_dev, val, offset);

	while (FUNC1(i2c_dev, offset) & mask) {
		if (FUNC3(jiffies, timeout)) {
			FUNC0(i2c_dev->dev, "timeout waiting for fifo flush\n");
			return -ETIMEDOUT;
		}
		FUNC4(1000, 2000);
	}
	return 0;
}
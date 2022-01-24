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
typedef  int u8 ;
typedef  int u32 ;
struct dw_i2c_dev {int /*<<< orphan*/  slave; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_IC_CLR_RD_REQ ; 
 int /*<<< orphan*/  DW_IC_CLR_RX_DONE ; 
 int /*<<< orphan*/  DW_IC_CLR_RX_UNDER ; 
 int /*<<< orphan*/  DW_IC_DATA_CMD ; 
 int /*<<< orphan*/  DW_IC_ENABLE ; 
 int DW_IC_INTR_ACTIVITY ; 
 int DW_IC_INTR_RD_REQ ; 
 int DW_IC_INTR_RX_DONE ; 
 int DW_IC_INTR_RX_FULL ; 
 int /*<<< orphan*/  DW_IC_INTR_STAT ; 
 int DW_IC_INTR_STOP_DET ; 
 int /*<<< orphan*/  DW_IC_RAW_INTR_STAT ; 
 int /*<<< orphan*/  DW_IC_STATUS ; 
 int DW_IC_STATUS_SLAVE_ACTIVITY ; 
 int /*<<< orphan*/  I2C_SLAVE_READ_PROCESSED ; 
 int /*<<< orphan*/  I2C_SLAVE_READ_REQUESTED ; 
 int /*<<< orphan*/  I2C_SLAVE_STOP ; 
 int /*<<< orphan*/  I2C_SLAVE_WRITE_RECEIVED ; 
 int /*<<< orphan*/  I2C_SLAVE_WRITE_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct dw_i2c_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_i2c_dev*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dw_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct dw_i2c_dev *dev)
{
	u32 raw_stat, stat, enabled;
	u8 val, slave_activity;

	stat = FUNC2(dev, DW_IC_INTR_STAT);
	enabled = FUNC2(dev, DW_IC_ENABLE);
	raw_stat = FUNC2(dev, DW_IC_RAW_INTR_STAT);
	slave_activity = ((FUNC2(dev, DW_IC_STATUS) &
		DW_IC_STATUS_SLAVE_ACTIVITY) >> 6);

	if (!enabled || !(raw_stat & ~DW_IC_INTR_ACTIVITY) || !dev->slave)
		return 0;

	FUNC0(dev->dev,
		"%#x STATUS SLAVE_ACTIVITY=%#x : RAW_INTR_STAT=%#x : INTR_STAT=%#x\n",
		enabled, slave_activity, raw_stat, stat);

	if ((stat & DW_IC_INTR_RX_FULL) && (stat & DW_IC_INTR_STOP_DET))
		FUNC5(dev->slave, I2C_SLAVE_WRITE_REQUESTED, &val);

	if (stat & DW_IC_INTR_RD_REQ) {
		if (slave_activity) {
			if (stat & DW_IC_INTR_RX_FULL) {
				val = FUNC2(dev, DW_IC_DATA_CMD);

				if (!FUNC5(dev->slave,
						     I2C_SLAVE_WRITE_RECEIVED,
						     &val)) {
					FUNC1(dev->dev, "Byte %X acked!",
						 val);
				}
				FUNC2(dev, DW_IC_CLR_RD_REQ);
				stat = FUNC4(dev);
			} else {
				FUNC2(dev, DW_IC_CLR_RD_REQ);
				FUNC2(dev, DW_IC_CLR_RX_UNDER);
				stat = FUNC4(dev);
			}
			if (!FUNC5(dev->slave,
					     I2C_SLAVE_READ_REQUESTED,
					     &val))
				FUNC3(dev, val, DW_IC_DATA_CMD);
		}
	}

	if (stat & DW_IC_INTR_RX_DONE) {
		if (!FUNC5(dev->slave, I2C_SLAVE_READ_PROCESSED,
				     &val))
			FUNC2(dev, DW_IC_CLR_RX_DONE);

		FUNC5(dev->slave, I2C_SLAVE_STOP, &val);
		stat = FUNC4(dev);
		return 1;
	}

	if (stat & DW_IC_INTR_RX_FULL) {
		val = FUNC2(dev, DW_IC_DATA_CMD);
		if (!FUNC5(dev->slave, I2C_SLAVE_WRITE_RECEIVED,
				     &val))
			FUNC1(dev->dev, "Byte %X acked!", val);
	} else {
		FUNC5(dev->slave, I2C_SLAVE_STOP, &val);
		stat = FUNC4(dev);
	}

	return 1;
}
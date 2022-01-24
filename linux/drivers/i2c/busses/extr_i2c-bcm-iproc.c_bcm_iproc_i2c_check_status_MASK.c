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
struct i2c_msg {int addr; } ;
struct bcm_iproc_i2c_dev {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  M_CMD_OFFSET ; 
#define  M_CMD_STATUS_FIFO_UNDERRUN 134 
#define  M_CMD_STATUS_LOST_ARB 133 
 int M_CMD_STATUS_MASK ; 
#define  M_CMD_STATUS_NACK_ADDR 132 
#define  M_CMD_STATUS_NACK_DATA 131 
#define  M_CMD_STATUS_RX_FIFO_FULL 130 
 int M_CMD_STATUS_SHIFT ; 
#define  M_CMD_STATUS_SUCCESS 129 
#define  M_CMD_STATUS_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (struct bcm_iproc_i2c_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_iproc_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct bcm_iproc_i2c_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bcm_iproc_i2c_dev *iproc_i2c,
				      struct i2c_msg *msg)
{
	u32 val;

	val = FUNC3(iproc_i2c, M_CMD_OFFSET);
	val = (val >> M_CMD_STATUS_SHIFT) & M_CMD_STATUS_MASK;

	switch (val) {
	case M_CMD_STATUS_SUCCESS:
		return 0;

	case M_CMD_STATUS_LOST_ARB:
		FUNC2(iproc_i2c->device, "lost bus arbitration\n");
		return -EAGAIN;

	case M_CMD_STATUS_NACK_ADDR:
		FUNC2(iproc_i2c->device, "NAK addr:0x%02x\n", msg->addr);
		return -ENXIO;

	case M_CMD_STATUS_NACK_DATA:
		FUNC2(iproc_i2c->device, "NAK data\n");
		return -ENXIO;

	case M_CMD_STATUS_TIMEOUT:
		FUNC2(iproc_i2c->device, "bus timeout\n");
		return -ETIMEDOUT;

	case M_CMD_STATUS_FIFO_UNDERRUN:
		FUNC2(iproc_i2c->device, "FIFO under-run\n");
		return -ENXIO;

	case M_CMD_STATUS_RX_FIFO_FULL:
		FUNC2(iproc_i2c->device, "RX FIFO full\n");
		return -ETIMEDOUT;

	default:
		FUNC2(iproc_i2c->device, "unknown error code=%d\n", val);

		/* re-initialize i2c for recovery */
		FUNC0(iproc_i2c, false);
		FUNC1(iproc_i2c);
		FUNC0(iproc_i2c, true);

		return -EIO;
	}
}
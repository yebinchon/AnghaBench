#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ control; scalar_t__ data; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct mv64xxx_i2c_data {int action; int num_msgs; int send_stop; int cntl_bits; int addr1; int addr2; int /*<<< orphan*/  waitq; int /*<<< orphan*/  block; TYPE_3__ reg_offsets; scalar_t__ reg_base; int /*<<< orphan*/  rc; TYPE_2__ adapter; int /*<<< orphan*/  errata_delay; int /*<<< orphan*/  byte_posn; TYPE_1__* msg; int /*<<< orphan*/  msgs; } ;
struct TYPE_4__ {int* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
#define  MV64XXX_I2C_ACTION_CONTINUE 136 
#define  MV64XXX_I2C_ACTION_INVALID 135 
#define  MV64XXX_I2C_ACTION_RCV_DATA 134 
#define  MV64XXX_I2C_ACTION_RCV_DATA_STOP 133 
#define  MV64XXX_I2C_ACTION_SEND_ADDR_1 132 
#define  MV64XXX_I2C_ACTION_SEND_ADDR_2 131 
#define  MV64XXX_I2C_ACTION_SEND_DATA 130 
#define  MV64XXX_I2C_ACTION_SEND_RESTART 129 
#define  MV64XXX_I2C_ACTION_SEND_STOP 128 
 int MV64XXX_I2C_REG_CONTROL_INTEN ; 
 int MV64XXX_I2C_REG_CONTROL_STOP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mv64xxx_i2c_data*) ; 
 void* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct mv64xxx_i2c_data *drv_data)
{
	switch(drv_data->action) {
	case MV64XXX_I2C_ACTION_SEND_RESTART:
		/* We should only get here if we have further messages */
		FUNC0(drv_data->num_msgs == 0);

		drv_data->msgs++;
		drv_data->num_msgs--;
		FUNC2(drv_data);

		if (drv_data->errata_delay)
			FUNC4(5);

		/*
		 * We're never at the start of the message here, and by this
		 * time it's already too late to do any protocol mangling.
		 * Thankfully, do not advertise support for that feature.
		 */
		drv_data->send_stop = drv_data->num_msgs == 1;
		break;

	case MV64XXX_I2C_ACTION_CONTINUE:
		FUNC6(drv_data->cntl_bits,
			drv_data->reg_base + drv_data->reg_offsets.control);
		break;

	case MV64XXX_I2C_ACTION_SEND_ADDR_1:
		FUNC6(drv_data->addr1,
			drv_data->reg_base + drv_data->reg_offsets.data);
		FUNC6(drv_data->cntl_bits,
			drv_data->reg_base + drv_data->reg_offsets.control);
		break;

	case MV64XXX_I2C_ACTION_SEND_ADDR_2:
		FUNC6(drv_data->addr2,
			drv_data->reg_base + drv_data->reg_offsets.data);
		FUNC6(drv_data->cntl_bits,
			drv_data->reg_base + drv_data->reg_offsets.control);
		break;

	case MV64XXX_I2C_ACTION_SEND_DATA:
		FUNC6(drv_data->msg->buf[drv_data->byte_posn++],
			drv_data->reg_base + drv_data->reg_offsets.data);
		FUNC6(drv_data->cntl_bits,
			drv_data->reg_base + drv_data->reg_offsets.control);
		break;

	case MV64XXX_I2C_ACTION_RCV_DATA:
		drv_data->msg->buf[drv_data->byte_posn++] =
			FUNC3(drv_data->reg_base + drv_data->reg_offsets.data);
		FUNC6(drv_data->cntl_bits,
			drv_data->reg_base + drv_data->reg_offsets.control);
		break;

	case MV64XXX_I2C_ACTION_RCV_DATA_STOP:
		drv_data->msg->buf[drv_data->byte_posn++] =
			FUNC3(drv_data->reg_base + drv_data->reg_offsets.data);
		drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_INTEN;
		FUNC6(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_STOP,
			drv_data->reg_base + drv_data->reg_offsets.control);
		drv_data->block = 0;
		if (drv_data->errata_delay)
			FUNC4(5);

		FUNC5(&drv_data->waitq);
		break;

	case MV64XXX_I2C_ACTION_INVALID:
	default:
		FUNC1(&drv_data->adapter.dev,
			"mv64xxx_i2c_do_action: Invalid action: %d\n",
			drv_data->action);
		drv_data->rc = -EIO;

		/* FALLTHRU */
	case MV64XXX_I2C_ACTION_SEND_STOP:
		drv_data->cntl_bits &= ~MV64XXX_I2C_REG_CONTROL_INTEN;
		FUNC6(drv_data->cntl_bits | MV64XXX_I2C_REG_CONTROL_STOP,
			drv_data->reg_base + drv_data->reg_offsets.control);
		drv_data->block = 0;
		FUNC5(&drv_data->waitq);
		break;
	}
}
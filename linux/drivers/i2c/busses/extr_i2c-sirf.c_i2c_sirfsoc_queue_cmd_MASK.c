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
struct sirfsoc_i2c {int finished_len; int msg_len; int cmd_ptr; int read_cmd_len; int* buf; scalar_t__ base; scalar_t__ last; scalar_t__ msg_read; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SIRFSOC_I2C_CMD_BUF_MAX ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SIRFSOC_I2C_CMD_START ; 
 int SIRFSOC_I2C_NACK ; 
 int SIRFSOC_I2C_READ ; 
 int SIRFSOC_I2C_START_CMD ; 
 int SIRFSOC_I2C_STOP ; 
 int SIRFSOC_I2C_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct sirfsoc_i2c *siic)
{
	u32 regval;
	int i = 0;

	if (siic->msg_read) {
		while (((siic->finished_len + i) < siic->msg_len)
				&& (siic->cmd_ptr < SIRFSOC_I2C_CMD_BUF_MAX)) {
			regval = SIRFSOC_I2C_READ | FUNC1(0);
			if (((siic->finished_len + i) ==
					(siic->msg_len - 1)) && siic->last)
				regval |= SIRFSOC_I2C_STOP | SIRFSOC_I2C_NACK;
			FUNC2(regval,
				siic->base + FUNC0(siic->cmd_ptr++));
			i++;
		}

		siic->read_cmd_len = i;
	} else {
		while ((siic->cmd_ptr < SIRFSOC_I2C_CMD_BUF_MAX - 1)
				&& (siic->finished_len < siic->msg_len)) {
			regval = SIRFSOC_I2C_WRITE | FUNC1(0);
			if ((siic->finished_len == (siic->msg_len - 1))
				&& siic->last)
				regval |= SIRFSOC_I2C_STOP;
			FUNC2(regval,
				siic->base + FUNC0(siic->cmd_ptr++));
			FUNC2(siic->buf[siic->finished_len++],
				siic->base + FUNC0(siic->cmd_ptr++));
		}
	}
	siic->cmd_ptr = 0;

	/* Trigger the transfer */
	FUNC2(SIRFSOC_I2C_START_CMD, siic->base + SIRFSOC_I2C_CMD_START);
}
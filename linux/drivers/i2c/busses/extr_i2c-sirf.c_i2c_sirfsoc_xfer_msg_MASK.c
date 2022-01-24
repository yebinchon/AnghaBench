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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct sirfsoc_i2c {scalar_t__ err_status; scalar_t__ base; TYPE_1__ adapter; int /*<<< orphan*/  done; } ;
struct i2c_msg {int len; } ;

/* Variables and functions */
 int EAGAIN ; 
 int SIRFSOC_I2C_CMD_DONE_EN ; 
 scalar_t__ SIRFSOC_I2C_CMD_START ; 
 scalar_t__ SIRFSOC_I2C_CTRL ; 
 int SIRFSOC_I2C_ERR_INT_EN ; 
 scalar_t__ SIRFSOC_I2C_ERR_TIMEOUT ; 
 int SIRFSOC_I2C_RESET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sirfsoc_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct sirfsoc_i2c*,struct i2c_msg*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct sirfsoc_i2c *siic, struct i2c_msg *msg)
{
	u32 regval = FUNC5(siic->base + SIRFSOC_I2C_CTRL);
	/* timeout waiting for the xfer to finish or fail */
	int timeout = FUNC4((msg->len + 1) * 50);

	FUNC3(siic, msg);

	FUNC7(regval | SIRFSOC_I2C_CMD_DONE_EN | SIRFSOC_I2C_ERR_INT_EN,
		siic->base + SIRFSOC_I2C_CTRL);
	FUNC2(siic);

	if (FUNC6(&siic->done, timeout) == 0) {
		siic->err_status = SIRFSOC_I2C_ERR_TIMEOUT;
		FUNC1(&siic->adapter.dev, "Transfer timeout\n");
	}

	FUNC7(regval & ~(SIRFSOC_I2C_CMD_DONE_EN | SIRFSOC_I2C_ERR_INT_EN),
		siic->base + SIRFSOC_I2C_CTRL);
	FUNC7(0, siic->base + SIRFSOC_I2C_CMD_START);

	/* i2c control doesn't response, reset it */
	if (siic->err_status == SIRFSOC_I2C_ERR_TIMEOUT) {
		FUNC7(FUNC5(siic->base + SIRFSOC_I2C_CTRL) | SIRFSOC_I2C_RESET,
			siic->base + SIRFSOC_I2C_CTRL);
		while (FUNC5(siic->base + SIRFSOC_I2C_CTRL) & SIRFSOC_I2C_RESET)
			FUNC0();
	}
	return siic->err_status ? -EAGAIN : 0;
}
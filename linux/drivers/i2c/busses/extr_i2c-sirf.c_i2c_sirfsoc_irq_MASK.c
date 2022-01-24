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
struct sirfsoc_i2c {scalar_t__ finished_len; scalar_t__ msg_len; scalar_t__ base; int /*<<< orphan*/  done; scalar_t__ msg_read; TYPE_1__ adapter; int /*<<< orphan*/  err_status; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ SIRFSOC_I2C_CTRL ; 
 int /*<<< orphan*/  SIRFSOC_I2C_ERR_NOACK ; 
 int SIRFSOC_I2C_RESET ; 
 scalar_t__ SIRFSOC_I2C_STATUS ; 
 int SIRFSOC_I2C_STAT_CMD_DONE ; 
 int SIRFSOC_I2C_STAT_ERR ; 
 int SIRFSOC_I2C_STAT_NACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sirfsoc_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct sirfsoc_i2c*) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct sirfsoc_i2c *siic = (struct sirfsoc_i2c *)dev_id;
	u32 i2c_stat = FUNC6(siic->base + SIRFSOC_I2C_STATUS);

	if (i2c_stat & SIRFSOC_I2C_STAT_ERR) {
		/* Error conditions */
		siic->err_status = SIRFSOC_I2C_ERR_NOACK;
		FUNC7(SIRFSOC_I2C_STAT_ERR, siic->base + SIRFSOC_I2C_STATUS);

		if (i2c_stat & SIRFSOC_I2C_STAT_NACK)
			FUNC2(&siic->adapter.dev, "ACK not received\n");
		else
			FUNC3(&siic->adapter.dev, "I2C error\n");

		/*
		 * Due to hardware ANOMALY, we need to reset I2C earlier after
		 * we get NOACK while accessing non-existing clients, otherwise
		 * we will get errors even we access existing clients later
		 */
		FUNC7(FUNC6(siic->base + SIRFSOC_I2C_CTRL) | SIRFSOC_I2C_RESET,
				siic->base + SIRFSOC_I2C_CTRL);
		while (FUNC6(siic->base + SIRFSOC_I2C_CTRL) & SIRFSOC_I2C_RESET)
			FUNC1();

		FUNC0(&siic->done);
	} else if (i2c_stat & SIRFSOC_I2C_STAT_CMD_DONE) {
		/* CMD buffer execution complete */
		if (siic->msg_read)
			FUNC5(siic);
		if (siic->finished_len == siic->msg_len)
			FUNC0(&siic->done);
		else /* Fill a new CMD buffer for left data */
			FUNC4(siic);

		FUNC7(SIRFSOC_I2C_STAT_CMD_DONE, siic->base + SIRFSOC_I2C_STATUS);
	}

	return IRQ_HANDLED;
}
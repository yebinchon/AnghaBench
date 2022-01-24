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
struct sh_mobile_i2c_data {int send_stop; int stop_after_dma; int sr; scalar_t__ dma_direction; int /*<<< orphan*/  dev; int /*<<< orphan*/  msg; int /*<<< orphan*/  dma_buf; int /*<<< orphan*/  wait; } ;
struct i2c_msg {int flags; } ;
struct i2c_adapter {int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 scalar_t__ DMA_NONE ; 
 int ETIMEDOUT ; 
 int I2C_M_STOP ; 
 int /*<<< orphan*/  ICCR ; 
 int /*<<< orphan*/  ICCR_SCP ; 
 int ICSR_TACK ; 
 int /*<<< orphan*/  OP_START ; 
 int SW_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct sh_mobile_i2c_data* FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct sh_mobile_i2c_data*) ; 
 int FUNC8 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct sh_mobile_i2c_data*,struct i2c_msg*,int) ; 
 long FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_adapter *adapter,
			      struct i2c_msg *msgs,
			      int num)
{
	struct sh_mobile_i2c_data *pd = FUNC1(adapter);
	struct i2c_msg	*msg;
	int err = 0;
	int i;
	long timeout;

	/* Wake up device and enable clock */
	FUNC5(pd->dev);

	/* Process all messages */
	for (i = 0; i < num; i++) {
		bool do_start = pd->send_stop || !i;
		msg = &msgs[i];
		pd->send_stop = i == num - 1 || msg->flags & I2C_M_STOP;
		pd->stop_after_dma = false;

		FUNC10(pd, msg, do_start);

		if (do_start)
			FUNC2(pd, OP_START);

		/* The interrupt handler takes care of the rest... */
		timeout = FUNC11(pd->wait,
				       pd->sr & (ICSR_TACK | SW_DONE),
				       adapter->timeout);

		/* 'stop_after_dma' tells if DMA transfer was complete */
		FUNC3(pd->dma_buf, pd->msg, pd->stop_after_dma);

		if (!timeout) {
			FUNC0(pd->dev, "Transfer request timed out\n");
			if (pd->dma_direction != DMA_NONE)
				FUNC9(pd);

			err = -ETIMEDOUT;
			break;
		}

		if (pd->send_stop)
			err = FUNC7(pd);
		else
			err = FUNC8(pd);
		if (err < 0)
			break;
	}

	/* Disable channel */
	FUNC4(pd, ICCR, ICCR_SCP);

	/* Disable clock and mark device as idle */
	FUNC6(pd->dev);

	return err ?: num;
}
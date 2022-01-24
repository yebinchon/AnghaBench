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
struct rk3x_i2c {int is_last_msg; int error; int /*<<< orphan*/  lock; int /*<<< orphan*/  clk; int /*<<< orphan*/  pclk; int /*<<< orphan*/  state; int /*<<< orphan*/  dev; int /*<<< orphan*/  busy; int /*<<< orphan*/  wait; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {scalar_t__ algo_data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  REG_CON ; 
 int REG_CON_EN ; 
 int REG_CON_STOP ; 
 int REG_CON_TUNING_MASK ; 
 int /*<<< orphan*/  REG_IEN ; 
 int /*<<< orphan*/  REG_IPD ; 
 int /*<<< orphan*/  STATE_IDLE ; 
 int /*<<< orphan*/  WAIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rk3x_i2c*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rk3x_i2c*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rk3x_i2c*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adap,
			 struct i2c_msg *msgs, int num)
{
	struct rk3x_i2c *i2c = (struct rk3x_i2c *)adap->algo_data;
	unsigned long timeout, flags;
	u32 val;
	int ret = 0;
	int i;

	FUNC8(&i2c->lock, flags);

	FUNC1(i2c->clk);
	FUNC1(i2c->pclk);

	i2c->is_last_msg = false;

	/*
	 * Process msgs. We can handle more than one message at once (see
	 * rk3x_i2c_setup()).
	 */
	for (i = 0; i < num; i += ret) {
		ret = FUNC6(i2c, msgs + i, num - i);

		if (ret < 0) {
			FUNC2(i2c->dev, "rk3x_i2c_setup() failed\n");
			break;
		}

		if (i + ret >= num)
			i2c->is_last_msg = true;

		FUNC9(&i2c->lock, flags);

		FUNC7(i2c);

		timeout = FUNC10(i2c->wait, !i2c->busy,
					     FUNC5(WAIT_TIMEOUT));

		FUNC8(&i2c->lock, flags);

		if (timeout == 0) {
			FUNC2(i2c->dev, "timeout, ipd: 0x%02x, state: %d\n",
				FUNC3(i2c, REG_IPD), i2c->state);

			/* Force a STOP condition without interrupt */
			FUNC4(i2c, 0, REG_IEN);
			val = FUNC3(i2c, REG_CON) & REG_CON_TUNING_MASK;
			val |= REG_CON_EN | REG_CON_STOP;
			FUNC4(i2c, val, REG_CON);

			i2c->state = STATE_IDLE;

			ret = -ETIMEDOUT;
			break;
		}

		if (i2c->error) {
			ret = i2c->error;
			break;
		}
	}

	FUNC0(i2c->pclk);
	FUNC0(i2c->clk);

	FUNC9(&i2c->lock, flags);

	return ret < 0 ? ret : num;
}
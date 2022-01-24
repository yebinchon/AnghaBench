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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct jz4780_i2c {int stop_hold; int is_write; unsigned char* wbuf; int wt_len; TYPE_1__ adap; int /*<<< orphan*/  trans_waitq; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  JZ4780_I2C_CTRL ; 
 unsigned short JZ4780_I2C_CTRL_STPHLD ; 
 int /*<<< orphan*/  JZ4780_I2C_INTM ; 
 unsigned short JZ4780_I2C_INTM_MTXABT ; 
 unsigned short JZ4780_I2C_INTM_MTXEMP ; 
 int /*<<< orphan*/  JZ4780_I2C_STA ; 
 unsigned short JZ4780_I2C_STA_MSTACT ; 
 unsigned short JZ4780_I2C_STA_TFE ; 
 int JZ4780_I2C_TIMEOUT ; 
 int /*<<< orphan*/  JZ4780_I2C_TXABRT ; 
 int /*<<< orphan*/  JZ4780_I2C_TXTL ; 
 unsigned short TX_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 unsigned short FUNC1 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_i2c*,unsigned short) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_i2c*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(struct jz4780_i2c *i2c,
					unsigned char *buf, int len,
					int cnt, int idx)
{
	int ret = 0;
	int wait_time = JZ4780_I2C_TIMEOUT * (len + 5);
	long timeout;
	unsigned short tmp;
	unsigned long flags;

	FUNC5(&i2c->lock, flags);

	if (idx < (cnt - 1))
		i2c->stop_hold = 1;
	else
		i2c->stop_hold = 0;

	i2c->is_write = 1;
	i2c->wbuf = buf;
	i2c->wt_len = len;

	FUNC3(i2c, JZ4780_I2C_TXTL, TX_LEVEL);

	FUNC3(i2c, JZ4780_I2C_INTM, JZ4780_I2C_INTM_MTXEMP
					| JZ4780_I2C_INTM_MTXABT);

	tmp = FUNC1(i2c, JZ4780_I2C_CTRL);
	tmp |= JZ4780_I2C_CTRL_STPHLD;
	FUNC3(i2c, JZ4780_I2C_CTRL, tmp);

	FUNC6(&i2c->lock, flags);

	timeout = FUNC8(&i2c->trans_waitq,
					      FUNC4(wait_time));
	if (timeout && !i2c->stop_hold) {
		unsigned short i2c_sta;
		int write_in_process;

		timeout = JZ4780_I2C_TIMEOUT * 100;
		for (; timeout > 0; timeout--) {
			i2c_sta = FUNC1(i2c, JZ4780_I2C_STA);

			write_in_process = (i2c_sta & JZ4780_I2C_STA_MSTACT) ||
				!(i2c_sta & JZ4780_I2C_STA_TFE);
			if (!write_in_process)
				break;
			FUNC7(10);
		}
	}

	if (!timeout) {
		FUNC0(&i2c->adap.dev, "write wait timeout\n");
		ret = -EIO;
	}

	tmp = FUNC1(i2c, JZ4780_I2C_TXABRT);
	if (tmp) {
		FUNC2(i2c, tmp);
		ret = -EIO;
	}

	return ret;
}
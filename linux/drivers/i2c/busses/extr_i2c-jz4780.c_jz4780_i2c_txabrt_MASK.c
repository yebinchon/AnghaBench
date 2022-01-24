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
struct jz4780_i2c {size_t cmd; TYPE_1__ adap; int /*<<< orphan*/ * data_buf; int /*<<< orphan*/ * cmd_buf; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  JZ4780_I2C_TAR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 int /*<<< orphan*/ * jz4780_i2c_abrt_src ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct jz4780_i2c *i2c, int src)
{
	int i;

	FUNC2(&i2c->adap.dev, "txabrt: 0x%08x\n", src);
	FUNC2(&i2c->adap.dev, "device addr=%x\n",
		FUNC3(i2c, JZ4780_I2C_TAR));
	FUNC2(&i2c->adap.dev, "send cmd count:%d  %d\n",
		i2c->cmd, i2c->cmd_buf[i2c->cmd]);
	FUNC2(&i2c->adap.dev, "receive data count:%d  %d\n",
		i2c->cmd, i2c->data_buf[i2c->cmd]);

	for (i = 0; i < 16; i++) {
		if (src & FUNC0(i))
			FUNC1(&i2c->adap.dev, "I2C TXABRT[%d]=%s\n",
				i, jz4780_i2c_abrt_src[i]);
	}
}
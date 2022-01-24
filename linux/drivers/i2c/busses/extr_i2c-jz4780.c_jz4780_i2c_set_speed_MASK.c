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
struct jz4780_i2c {int speed; TYPE_1__ adap; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  JZ4780_I2C_CTRL ; 
 unsigned short JZ4780_I2C_CTRL_MD ; 
 unsigned short JZ4780_I2C_CTRL_REST ; 
 unsigned short JZ4780_I2C_CTRL_SLVDIS ; 
 unsigned short JZ4780_I2C_CTRL_SPDF ; 
 unsigned short JZ4780_I2C_CTRL_SPDS ; 
 int /*<<< orphan*/  JZ4780_I2C_FHCNT ; 
 int /*<<< orphan*/  JZ4780_I2C_FLCNT ; 
 int /*<<< orphan*/  JZ4780_I2C_SDAHD ; 
 int JZ4780_I2C_SDAHD_HDENB ; 
 int /*<<< orphan*/  JZ4780_I2C_SDASU ; 
 int /*<<< orphan*/  JZ4780_I2C_SHCNT ; 
 int /*<<< orphan*/  JZ4780_I2C_SLCNT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (struct jz4780_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (struct jz4780_i2c*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct jz4780_i2c *i2c)
{
	int dev_clk_khz = FUNC4(i2c->clk) / 1000;
	int cnt_high = 0;	/* HIGH period count of the SCL clock */
	int cnt_low = 0;	/* LOW period count of the SCL clock */
	int cnt_period = 0;	/* period count of the SCL clock */
	int setup_time = 0;
	int hold_time = 0;
	unsigned short tmp = 0;
	int i2c_clk = i2c->speed;

	if (FUNC6(i2c))
		FUNC5(&i2c->adap.dev, "i2c not disabled\n");

	/*
	 * 1 JZ4780_I2C cycle equals to cnt_period PCLK(i2c_clk)
	 * standard mode, min LOW and HIGH period are 4700 ns and 4000 ns
	 * fast mode, min LOW and HIGH period are 1300 ns and 600 ns
	 */
	cnt_period = dev_clk_khz / i2c_clk;

	if (i2c_clk <= 100)
		cnt_high = (cnt_period * 4000) / (4700 + 4000);
	else
		cnt_high = (cnt_period * 600) / (1300 + 600);

	cnt_low = cnt_period - cnt_high;

	/*
	 * NOTE: JZ4780_I2C_CTRL_REST can't set when i2c enabled, because
	 * normal read are 2 messages, we cannot disable i2c controller
	 * between these two messages, this means that we must always set
	 * JZ4780_I2C_CTRL_REST when init JZ4780_I2C_CTRL
	 *
	 */
	if (i2c_clk <= 100) {
		tmp = JZ4780_I2C_CTRL_SPDS | JZ4780_I2C_CTRL_REST
		      | JZ4780_I2C_CTRL_SLVDIS | JZ4780_I2C_CTRL_MD;
		FUNC7(i2c, JZ4780_I2C_CTRL, tmp);

		FUNC7(i2c, JZ4780_I2C_SHCNT,
				  FUNC2(cnt_high));
		FUNC7(i2c, JZ4780_I2C_SLCNT,
				  FUNC3(cnt_low));
	} else {
		tmp = JZ4780_I2C_CTRL_SPDF | JZ4780_I2C_CTRL_REST
		      | JZ4780_I2C_CTRL_SLVDIS | JZ4780_I2C_CTRL_MD;
		FUNC7(i2c, JZ4780_I2C_CTRL, tmp);

		FUNC7(i2c, JZ4780_I2C_FHCNT,
				  FUNC0(cnt_high));
		FUNC7(i2c, JZ4780_I2C_FLCNT,
				  FUNC1(cnt_low));
	}

	/*
	 * a i2c device must internally provide a hold time at least 300ns
	 * tHD:DAT
	 *	Standard Mode: min=300ns, max=3450ns
	 *	Fast Mode: min=0ns, max=900ns
	 * tSU:DAT
	 *	Standard Mode: min=250ns, max=infinite
	 *	Fast Mode: min=100(250ns is recommended), max=infinite
	 *
	 * 1i2c_clk = 10^6 / dev_clk_khz
	 * on FPGA, dev_clk_khz = 12000, so 1i2c_clk = 1000/12 = 83ns
	 * on Pisces(1008M), dev_clk_khz=126000, so 1i2c_clk = 1000 / 126 = 8ns
	 *
	 * The actual hold time is (SDAHD + 1) * (i2c_clk period).
	 *
	 * Length of setup time calculated using (SDASU - 1) * (ic_clk_period)
	 *
	 */
	if (i2c_clk <= 100) { /* standard mode */
		setup_time = 300;
		hold_time = 400;
	} else {
		setup_time = 450;
		hold_time = 450;
	}

	hold_time = ((hold_time * dev_clk_khz) / 1000000) - 1;
	setup_time = ((setup_time * dev_clk_khz) / 1000000)  + 1;

	if (setup_time > 255)
		setup_time = 255;

	if (setup_time <= 0)
		setup_time = 1;

	FUNC7(i2c, JZ4780_I2C_SDASU, setup_time);

	if (hold_time > 255)
		hold_time = 255;

	if (hold_time >= 0) {
		/*i2c hold time enable */
		hold_time |= JZ4780_I2C_SDAHD_HDENB;
		FUNC7(i2c, JZ4780_I2C_SDAHD, hold_time);
	} else {
		/* disable hold time */
		FUNC7(i2c, JZ4780_I2C_SDAHD, 0);
	}

	return 0;
}
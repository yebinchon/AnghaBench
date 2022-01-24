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
typedef  int u64 ;
typedef  int u32 ;
struct rk3x_i2c_calced_timings {int tuning; int div_high; int div_low; } ;
struct i2c_timings {int bus_freq_hz; } ;
struct rk3x_i2c {int /*<<< orphan*/  dev; int /*<<< orphan*/  pclk; int /*<<< orphan*/  lock; TYPE_1__* soc_data; struct i2c_timings t; } ;
struct TYPE_2__ {int (* calc_timings ) (unsigned long,struct i2c_timings*,struct rk3x_i2c_calced_timings*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  REG_CLKDIV ; 
 int /*<<< orphan*/  REG_CON ; 
 int REG_CON_TUNING_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned long,int,int,int) ; 
 int FUNC4 (int,unsigned long) ; 
 int FUNC5 (struct rk3x_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rk3x_i2c*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC9 (unsigned long,struct i2c_timings*,struct rk3x_i2c_calced_timings*) ; 

__attribute__((used)) static void FUNC10(struct rk3x_i2c *i2c, unsigned long clk_rate)
{
	struct i2c_timings *t = &i2c->t;
	struct rk3x_i2c_calced_timings calc;
	u64 t_low_ns, t_high_ns;
	unsigned long flags;
	u32 val;
	int ret;

	ret = i2c->soc_data->calc_timings(clk_rate, t, &calc);
	FUNC0(ret != 0, "Could not reach SCL freq %u", t->bus_freq_hz);

	FUNC2(i2c->pclk);

	FUNC7(&i2c->lock, flags);
	val = FUNC5(i2c, REG_CON);
	val &= ~REG_CON_TUNING_MASK;
	val |= calc.tuning;
	FUNC6(i2c, val, REG_CON);
	FUNC6(i2c, (calc.div_high << 16) | (calc.div_low & 0xffff),
		   REG_CLKDIV);
	FUNC8(&i2c->lock, flags);

	FUNC1(i2c->pclk);

	t_low_ns = FUNC4(((u64)calc.div_low + 1) * 8 * 1000000000, clk_rate);
	t_high_ns = FUNC4(((u64)calc.div_high + 1) * 8 * 1000000000,
			    clk_rate);
	FUNC3(i2c->dev,
		"CLK %lukhz, Req %uns, Act low %lluns high %lluns\n",
		clk_rate / 1000,
		1000000000 / t->bus_freq_hz,
		t_low_ns, t_high_ns);
}
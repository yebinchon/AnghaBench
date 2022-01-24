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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct ina3221_input {int shunt_resistor; } ;
struct ina3221_data {int /*<<< orphan*/  regmap; struct ina3221_input* inputs; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int INT_MAX ; 
 int INT_MIN ; 
 int FUNC1 (int,int,int) ; 
 struct ina3221_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/ ** ina3221_curr_reg ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct device *dev, u32 attr,
			      int channel, long val)
{
	struct ina3221_data *ina = FUNC2(dev);
	struct ina3221_input *input = &ina->inputs[channel];
	int resistance_uo = input->shunt_resistor;
	u8 reg = ina3221_curr_reg[attr][channel];
	int regval, current_ma, voltage_uv;

	/* clamp current */
	current_ma = FUNC1(val,
			       INT_MIN / resistance_uo,
			       INT_MAX / resistance_uo);

	voltage_uv = FUNC0(current_ma * resistance_uo, 1000);

	/* clamp voltage */
	voltage_uv = FUNC1(voltage_uv, -163800, 163800);

	/* 1 / 40uV(scale) << 3(register shift) = 5 */
	regval = FUNC0(voltage_uv, 5) & 0xfff8;

	return FUNC3(ina->regmap, reg, regval);
}
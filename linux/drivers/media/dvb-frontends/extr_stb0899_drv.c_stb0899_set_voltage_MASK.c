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
struct stb0899_state {int dummy; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef  enum fe_sec_voltage { ____Placeholder_fe_sec_voltage } fe_sec_voltage ;

/* Variables and functions */
 int EINVAL ; 
#define  SEC_VOLTAGE_13 130 
#define  SEC_VOLTAGE_18 129 
#define  SEC_VOLTAGE_OFF 128 
 int /*<<< orphan*/  STB0899_GPIO00CFG ; 
 int /*<<< orphan*/  STB0899_GPIO01CFG ; 
 int /*<<< orphan*/  STB0899_GPIO02CFG ; 
 int /*<<< orphan*/  FUNC0 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe,
			       enum fe_sec_voltage voltage)
{
	struct stb0899_state *state = fe->demodulator_priv;

	switch (voltage) {
	case SEC_VOLTAGE_13:
		FUNC0(state, STB0899_GPIO00CFG, 0x82);
		FUNC0(state, STB0899_GPIO01CFG, 0x02);
		FUNC0(state, STB0899_GPIO02CFG, 0x00);
		break;
	case SEC_VOLTAGE_18:
		FUNC0(state, STB0899_GPIO00CFG, 0x02);
		FUNC0(state, STB0899_GPIO01CFG, 0x02);
		FUNC0(state, STB0899_GPIO02CFG, 0x82);
		break;
	case SEC_VOLTAGE_OFF:
		FUNC0(state, STB0899_GPIO00CFG, 0x82);
		FUNC0(state, STB0899_GPIO01CFG, 0x82);
		FUNC0(state, STB0899_GPIO02CFG, 0x82);
		break;
	default:
		return -EINVAL;
	}

	return 0;
}
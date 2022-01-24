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
struct stv090x_state {int dummy; } ;
struct dvb_frontend {struct stv090x_state* demodulator_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOx_CONFIG_FIELD ; 
 int /*<<< orphan*/  GPIOx_OPD_FIELD ; 
 int /*<<< orphan*/  GPIOx_XOR_FIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u8 gpio, u8 dir,
			    u8 value, u8 xor_value)
{
	struct stv090x_state *state = fe->demodulator_priv;
	u8 reg = 0;

	FUNC1(reg, GPIOx_OPD_FIELD, dir);
	FUNC1(reg, GPIOx_CONFIG_FIELD, value);
	FUNC1(reg, GPIOx_XOR_FIELD, xor_value);

	return FUNC2(state, FUNC0(gpio), reg);
}
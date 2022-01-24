#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct TYPE_4__ {int if_drives; } ;
struct TYPE_5__ {TYPE_1__ cfg; } ;
struct TYPE_6__ {TYPE_2__ d9; } ;
struct dib9000_state {int reg_offs; TYPE_3__ chip; int /*<<< orphan*/  i2c_master; int /*<<< orphan*/  i2c; int /*<<< orphan*/  revision; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB9000_POWER_ALL ; 
 int /*<<< orphan*/  DIB9000_POWER_INTERFACE_ONLY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dib9000_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib9000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct dib9000_state *state = fe->demodulator_priv;

	FUNC3(state, 1817, 0x0003);

	FUNC3(state, 1227, 1);
	FUNC3(state, 1227, 0);

	switch ((state->revision = FUNC0(&state->i2c))) {
	case 0x4003:
	case 0x4004:
	case 0x4005:
		state->reg_offs = 1;
		break;
	default:
		return -EINVAL;
	}

	/* reset the i2c-master to use the host interface */
	FUNC4(&state->i2c_master);

	FUNC2(state, DIB9000_POWER_ALL);

	/* unforce divstr regardless whether i2c enumeration was done or not */
	FUNC3(state, 1794, FUNC1(state, 1794) & ~(1 << 1));
	FUNC3(state, 1796, 0);
	FUNC3(state, 1805, 0x805);

	/* restart all parts */
	FUNC3(state, 898, 0xffff);
	FUNC3(state, 899, 0xffff);
	FUNC3(state, 900, 0x0001);
	FUNC3(state, 901, 0xff19);
	FUNC3(state, 902, 0x003c);

	FUNC3(state, 898, 0);
	FUNC3(state, 899, 0);
	FUNC3(state, 900, 0);
	FUNC3(state, 901, 0);
	FUNC3(state, 902, 0);

	FUNC3(state, 911, state->chip.d9.cfg.if_drives);

	FUNC2(state, DIB9000_POWER_INTERFACE_ONLY);

	return 0;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct nxt6000_state {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int /*<<< orphan*/  inversion; int /*<<< orphan*/  transmission_mode; int /*<<< orphan*/  guard_interval; int /*<<< orphan*/  bandwidth_hz; } ;
struct dvb_frontend {TYPE_2__ ops; struct nxt6000_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nxt6000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	struct nxt6000_state* state = fe->demodulator_priv;
	int result;

	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe);
		if (fe->ops.i2c_gate_ctrl) fe->ops.i2c_gate_ctrl(fe, 0);
	}

	result = FUNC1(state, p->bandwidth_hz);
	if (result < 0)
		return result;

	result = FUNC2(state, p->guard_interval);
	if (result < 0)
		return result;

	result = FUNC4(state, p->transmission_mode);
	if (result < 0)
		return result;

	result = FUNC3(state, p->inversion);
	if (result < 0)
		return result;

	FUNC0(500);
	return 0;
}
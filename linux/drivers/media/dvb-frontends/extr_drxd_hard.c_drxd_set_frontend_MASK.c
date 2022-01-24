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
struct TYPE_3__ {int /*<<< orphan*/  (* set_params ) (struct dvb_frontend*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* i2c_gate_ctrl ) (struct dvb_frontend*,int /*<<< orphan*/ ) ;TYPE_1__ tuner_ops; } ;
struct dtv_frontend_properties {int dummy; } ;
struct dvb_frontend {TYPE_2__ ops; struct drxd_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct drxd_state {struct dtv_frontend_properties props; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int FUNC0 (struct drxd_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct drxd_state*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct dtv_frontend_properties *p = &fe->dtv_property_cache;
	struct drxd_state *state = fe->demodulator_priv;
	s32 off = 0;

	state->props = *p;
	FUNC1(state);

	if (fe->ops.tuner_ops.set_params) {
		fe->ops.tuner_ops.set_params(fe);
		if (fe->ops.i2c_gate_ctrl)
			fe->ops.i2c_gate_ctrl(fe, 0);
	}

	FUNC2(200);

	return FUNC0(state, off);
}
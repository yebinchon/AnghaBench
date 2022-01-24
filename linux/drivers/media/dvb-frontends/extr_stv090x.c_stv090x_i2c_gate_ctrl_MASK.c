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
typedef  int /*<<< orphan*/  u32 ;
struct stv090x_state {TYPE_2__* internal; int /*<<< orphan*/  frontend; TYPE_1__* config; } ;
struct TYPE_4__ {int /*<<< orphan*/  tuner_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* tuner_i2c_lock ) (int /*<<< orphan*/ *,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  I2CRPT ; 
 int /*<<< orphan*/  I2CT_ON_FIELD ; 
 int /*<<< orphan*/  FUNC0 (struct stv090x_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct stv090x_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct stv090x_state *state, int enable)
{
	u32 reg;

	/*
	 * NOTE! A lock is used as a FSM to control the state in which
	 * access is serialized between two tuners on the same demod.
	 * This has nothing to do with a lock to protect a critical section
	 * which may in some other cases be confused with protecting I/O
	 * access to the demodulator gate.
	 * In case of any error, the lock is unlocked and exit within the
	 * relevant operations themselves.
	 */
	if (enable) {
		if (state->config->tuner_i2c_lock)
			state->config->tuner_i2c_lock(&state->frontend, 1);
		else
			FUNC4(&state->internal->tuner_lock);
	}

	reg = FUNC0(state, I2CRPT);
	if (enable) {
		FUNC3(FE_DEBUG, 1, "Enable Gate");
		FUNC1(reg, I2CT_ON_FIELD, 1);
		if (FUNC2(state, I2CRPT, reg) < 0)
			goto err;

	} else {
		FUNC3(FE_DEBUG, 1, "Disable Gate");
		FUNC1(reg, I2CT_ON_FIELD, 0);
		if ((FUNC2(state, I2CRPT, reg)) < 0)
			goto err;
	}

	if (!enable) {
		if (state->config->tuner_i2c_lock)
			state->config->tuner_i2c_lock(&state->frontend, 0);
		else
			FUNC5(&state->internal->tuner_lock);
	}

	return 0;
err:
	FUNC3(FE_ERROR, 1, "I/O error");
	if (state->config->tuner_i2c_lock)
		state->config->tuner_i2c_lock(&state->frontend, 0);
	else
		FUNC5(&state->internal->tuner_lock);
	return -1;
}
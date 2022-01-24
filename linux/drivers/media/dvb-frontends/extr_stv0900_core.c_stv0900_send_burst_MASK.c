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
typedef  int u8 ;
struct stv0900_state {int demod; struct stv0900_internal* internal; } ;
struct stv0900_internal {int dummy; } ;
struct dvb_frontend {struct stv0900_state* demodulator_priv; } ;
typedef  enum fe_stv0900_demod_num { ____Placeholder_fe_stv0900_demod_num } fe_stv0900_demod_num ;
typedef  enum fe_sec_mini_cmd { ____Placeholder_fe_sec_mini_cmd } fe_sec_mini_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  DISTX_MODE ; 
#define  SEC_MINI_A 129 
#define  SEC_MINI_B 128 
 int /*<<< orphan*/  FUNC0 (struct stv0900_internal*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stv0900_internal*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe,
			      enum fe_sec_mini_cmd burst)
{
	struct stv0900_state *state = fe->demodulator_priv;
	struct stv0900_internal *intp = state->internal;
	enum fe_stv0900_demod_num demod = state->demod;
	u8 data;


	switch (burst) {
	case SEC_MINI_A:
		FUNC1(intp, DISTX_MODE, 3);/* Unmodulated */
		data = 0x00;
		FUNC0(intp, &data, 1, state->demod);
		break;
	case SEC_MINI_B:
		FUNC1(intp, DISTX_MODE, 2);/* Modulated */
		data = 0xff;
		FUNC0(intp, &data, 1, state->demod);
		break;
	}

	return 0;
}
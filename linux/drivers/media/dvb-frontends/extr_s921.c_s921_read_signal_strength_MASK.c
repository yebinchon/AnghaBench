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
typedef  int u16 ;
struct s921_state {int dummy; } ;
struct dvb_frontend {struct s921_state* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int FE_HAS_LOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct dvb_frontend*,int*) ; 
 int FUNC2 (struct s921_state*,int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, u16 *strength)
{
	enum fe_status	status;
	struct s921_state *state = fe->demodulator_priv;
	int rc;

	/* FIXME: Use the proper register for it... 0x80? */
	rc = FUNC1(fe, &status);
	if (rc < 0)
		return rc;

	*strength = (status & FE_HAS_LOCK) ? 0xffff : 0;

	FUNC0("strength = 0x%04x\n", *strength);

	rc = FUNC2(state, 0x01);
	FUNC0("status 0x01: %02x\n", rc);

	rc = FUNC2(state, 0x80);
	FUNC0("status 0x80: %02x\n", rc);

	rc = FUNC2(state, 0x32);
	FUNC0("status 0x32: %02x\n", rc);

	return 0;
}
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
struct lg216x_state {int dummy; } ;
struct dvb_frontend {struct lg216x_state* demodulator_priv; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int FUNC0 (struct lg216x_state*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, enum fe_status *status)
{
	struct lg216x_state *state = fe->demodulator_priv;
	int ret, acq_lock, sync_lock;

	*status = 0;

	ret = FUNC0(state, &acq_lock, &sync_lock);
	if (FUNC2(ret))
		goto fail;

	FUNC1("%s%s\n",
	       acq_lock  ? "SIGNALEXIST " : "",
	       sync_lock ? "SYNCLOCK"     : "");

	if (acq_lock)
		*status |= FE_HAS_SIGNAL;
	if (sync_lock)
		*status |= FE_HAS_SYNC;

	if (*status)
		*status |= FE_HAS_CARRIER | FE_HAS_VITERBI | FE_HAS_LOCK;

fail:
	return ret;
}
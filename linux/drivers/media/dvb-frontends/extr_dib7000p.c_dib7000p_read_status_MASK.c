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
struct dvb_frontend {struct dib7000p_state* demodulator_priv; } ;
struct dib7000p_state {int dummy; } ;
typedef  enum fe_status { ____Placeholder_fe_status } fe_status ;

/* Variables and functions */
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,int) ; 
 int FUNC1 (struct dib7000p_state*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, enum fe_status *stat)
{
	struct dib7000p_state *state = fe->demodulator_priv;
	u16 lock = FUNC1(state, 509);

	*stat = 0;

	if (lock & 0x8000)
		*stat |= FE_HAS_SIGNAL;
	if (lock & 0x3000)
		*stat |= FE_HAS_CARRIER;
	if (lock & 0x0100)
		*stat |= FE_HAS_VITERBI;
	if (lock & 0x0010)
		*stat |= FE_HAS_SYNC;
	if ((lock & 0x0038) == 0x38)
		*stat |= FE_HAS_LOCK;

	FUNC0(fe, *stat);

	return 0;
}
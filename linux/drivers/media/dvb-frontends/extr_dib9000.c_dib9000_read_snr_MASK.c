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
typedef  size_t u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct dvb_frontend {struct dib9000_state* demodulator_priv; } ;
struct dib9000_state {int /*<<< orphan*/  demod_lock; struct dvb_frontend** fe; } ;

/* Variables and functions */
 int EINTR ; 
 size_t MAX_NUMBER_OF_FRONTENDS ; 
 int FUNC0 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe, u16 * snr)
{
	struct dib9000_state *state = fe->demodulator_priv;
	u8 index_frontend;
	u32 snr_master;

	if (FUNC3(&state->demod_lock) < 0) {
		FUNC1("could not get the lock\n");
		return -EINTR;
	}
	snr_master = FUNC0(fe);
	for (index_frontend = 1; (index_frontend < MAX_NUMBER_OF_FRONTENDS) && (state->fe[index_frontend] != NULL); index_frontend++)
		snr_master += FUNC0(state->fe[index_frontend]);

	if ((snr_master >> 16) != 0) {
		snr_master = 10 * FUNC2(snr_master >> 16);
		*snr = snr_master / ((1 << 24) / 10);
	} else
		*snr = 0;

	FUNC4(&state->demod_lock);

	return 0;
}
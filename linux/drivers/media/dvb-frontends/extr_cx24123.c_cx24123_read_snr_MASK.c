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
struct dvb_frontend {struct cx24123_state* demodulator_priv; } ;
struct cx24123_state {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cx24123_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, u16 *snr)
{
	struct cx24123_state *state = fe->demodulator_priv;

	/* Inverted raw Es/N0 count, totally bogus but better than the
	   BER threshold. */
	*snr = 65535 - (((u16)FUNC0(state, 0x18) << 8) |
			 (u16)FUNC0(state, 0x19));

	FUNC1("read S/N index = %d\n", *snr);

	return 0;
}
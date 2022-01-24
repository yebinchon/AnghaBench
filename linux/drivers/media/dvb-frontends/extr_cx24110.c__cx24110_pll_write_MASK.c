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
struct dvb_frontend {struct cx24110_state* demodulator_priv; } ;
struct cx24110_state {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct cx24110_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cx24110_state*,int,int const) ; 

__attribute__((used)) static int FUNC2 (struct dvb_frontend* fe, const u8 buf[], int len)
{
	struct cx24110_state *state = fe->demodulator_priv;

	if (len != 3)
		return -EINVAL;

/* tuner data is 21 bits long, must be left-aligned in data */
/* tuner cx24108 is written through a dedicated 3wire interface on the demod chip */
/* FIXME (low): add error handling, avoid infinite loops if HW fails... */

	FUNC1(state,0x6d,0x30); /* auto mode at 62kHz */
	FUNC1(state,0x70,0x15); /* auto mode 21 bits */

	/* if the auto tuner writer is still busy, clear it out */
	while (FUNC0(state,0x6d)&0x80)
		FUNC1(state,0x72,0);

	/* write the topmost 8 bits */
	FUNC1(state,0x72,buf[0]);

	/* wait for the send to be completed */
	while ((FUNC0(state,0x6d)&0xc0)==0x80)
		;

	/* send another 8 bytes */
	FUNC1(state,0x72,buf[1]);
	while ((FUNC0(state,0x6d)&0xc0)==0x80)
		;

	/* and the topmost 5 bits of this byte */
	FUNC1(state,0x72,buf[2]);
	while ((FUNC0(state,0x6d)&0xc0)==0x80)
		;

	/* now strobe the enable line once */
	FUNC1(state,0x6d,0x32);
	FUNC1(state,0x6d,0x30);

	return 0;
}
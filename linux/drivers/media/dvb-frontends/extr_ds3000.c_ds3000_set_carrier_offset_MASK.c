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
struct dvb_frontend {struct ds3000_state* demodulator_priv; } ;
struct ds3000_state {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int DS3000_SAMPLE_RATE ; 
 int /*<<< orphan*/  FUNC0 (struct ds3000_state*,int,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe,
					s32 carrier_offset_khz)
{
	struct ds3000_state *state = fe->demodulator_priv;
	s32 tmp;

	tmp = carrier_offset_khz;
	tmp *= 65536;
	tmp = (2 * tmp + DS3000_SAMPLE_RATE) / (2 * DS3000_SAMPLE_RATE);

	if (tmp < 0)
		tmp += 65536;

	FUNC0(state, 0x5f, tmp >> 8);
	FUNC0(state, 0x5e, tmp & 0xff);

	return 0;
}
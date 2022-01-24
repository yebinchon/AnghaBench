#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct lgdt3306a_state {int current_modulation; int snr; } ;
struct TYPE_2__ {int (* read_snr ) (struct dvb_frontend*,scalar_t__*) ;} ;
struct dvb_frontend {TYPE_1__ ops; struct lgdt3306a_state* demodulator_priv; } ;

/* Variables and functions */
 int EINVAL ; 
#define  QAM_256 131 
#define  QAM_64 130 
#define  QAM_AUTO 129 
#define  VSB_8 128 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int,int*) ; 
 int FUNC3 (struct dvb_frontend*,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,
					 u16 *strength)
{
	/*
	 * Calculate some sort of "strength" from SNR
	 */
	struct lgdt3306a_state *state = fe->demodulator_priv;
	u8 val;
	u16 snr; /* snr_x10 */
	int ret;
	u32 ref_snr; /* snr*100 */
	u32 str;

	*strength = 0;

	switch (state->current_modulation) {
	case VSB_8:
		 ref_snr = 1600; /* 16dB */
		 break;
	case QAM_64:
	case QAM_256:
	case QAM_AUTO:
		/* need to know actual modulation to set proper SNR baseline */
		ret = FUNC2(state, 0x00a6, &val);
		if (FUNC1(ret))
			goto fail;

		if(val & 0x04)
			ref_snr = 2800; /* QAM-256 28dB */
		else
			ref_snr = 2200; /* QAM-64  22dB */
		break;
	default:
		return -EINVAL;
	}

	ret = fe->ops.read_snr(fe, &snr);
	if (FUNC1(ret))
		goto fail;

	if (state->snr <= (ref_snr - 100))
		str = 0;
	else if (state->snr <= ref_snr)
		str = (0xffff * 65) / 100; /* 65% */
	else {
		str = state->snr - ref_snr;
		str /= 50;
		str += 78; /* 78%-100% */
		if (str > 100)
			str = 100;
		str = (0xffff * str) / 100;
	}
	*strength = (u16)str;
	FUNC0("strength=%u\n", *strength);

fail:
	return ret;
}
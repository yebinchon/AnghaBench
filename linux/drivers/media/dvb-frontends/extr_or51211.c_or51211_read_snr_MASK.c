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
typedef  int u16 ;
struct or51211_state {int snr; TYPE_1__* config; } ;
struct dvb_frontend {struct or51211_state* demodulator_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  demod_address; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 scalar_t__ FUNC2 (struct or51211_state*,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (struct or51211_state*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend* fe, u16* snr)
{
	struct or51211_state* state = fe->demodulator_priv;
	u8 rec_buf[2];
	u8 snd_buf[3];

	/* SNR after Equalizer */
	snd_buf[0] = 0x04;
	snd_buf[1] = 0x00;
	snd_buf[2] = 0x04;

	if (FUNC3(state,state->config->demod_address,snd_buf,3)) {
		FUNC4("error writing snr reg\n");
		return -1;
	}
	if (FUNC2(state,state->config->demod_address,rec_buf,2)) {
		FUNC4("read_status read error\n");
		return -1;
	}

	state->snr = FUNC0(rec_buf[0], 89599047);
	*snr = (state->snr) >> 16;

	FUNC1("noise = 0x%02x, snr = %d.%02d dB\n", rec_buf[0],
		state->snr >> 24, (((state->snr>>8) & 0xffff) * 100) >> 16);

	return 0;
}
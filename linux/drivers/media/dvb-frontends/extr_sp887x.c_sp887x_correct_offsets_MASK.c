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
typedef  int u32 ;
struct sp887x_state {int dummy; } ;
struct dtv_frontend_properties {int frequency; int bandwidth_hz; scalar_t__ inversion; } ;

/* Variables and functions */
 scalar_t__ INVERSION_ON ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sp887x_state*,int,int const) ; 

__attribute__((used)) static void FUNC2 (struct sp887x_state* state,
				    struct dtv_frontend_properties *p,
				    int actual_freq)
{
	static const u32 srate_correction [] = { 1879617, 4544878, 8098561 };
	int bw_index;
	int freq_offset = actual_freq - p->frequency;
	int sysclock = 61003; //[kHz]
	int ifreq = 36000000;
	int freq;
	int frequency_shift;

	switch (p->bandwidth_hz) {
	default:
	case 8000000:
		bw_index = 0;
		break;
	case 7000000:
		bw_index = 1;
		break;
	case 6000000:
		bw_index = 2;
		break;
	}

	if (p->inversion == INVERSION_ON)
		freq = ifreq - freq_offset;
	else
		freq = ifreq + freq_offset;

	FUNC0(freq / 333, sysclock, NULL, &frequency_shift);

	if (p->inversion == INVERSION_ON)
		frequency_shift = -frequency_shift;

	/* sample rate correction */
	FUNC1(state, 0x319, srate_correction[bw_index] >> 12);
	FUNC1(state, 0x31a, srate_correction[bw_index] & 0xfff);

	/* carrier offset correction */
	FUNC1(state, 0x309, frequency_shift >> 12);
	FUNC1(state, 0x30a, frequency_shift & 0xfff);
}
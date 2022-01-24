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
struct lgdt3306a_state {int dummy; } ;

/* Variables and functions */
 int QAM_64 ; 
 int QAM_AUTO ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ forced_manual ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int,int*) ; 
 int FUNC3 (struct lgdt3306a_state*) ; 
 int FUNC4 (struct lgdt3306a_state*,int,int) ; 

__attribute__((used)) static int FUNC5(struct lgdt3306a_state *state, int modulation)
{
	u8 val;
	int ret;

	FUNC0("modulation=%d\n", modulation);

	/* 1. Selection of standard mode(0x08=QAM, 0x80=VSB) */
	ret = FUNC4(state, 0x0008, 0x08);
	if (FUNC1(ret))
		goto fail;

	/* 1a. Spectrum inversion detection to Auto */
	ret = FUNC2(state, 0x0002, &val);
	val &= 0xfb; /* SPECINV Off */
	val |= 0x08; /* SPECINVAUTO On */
	ret = FUNC4(state, 0x0002, val);
	if (FUNC1(ret))
		goto fail;

	/* 2. Bandwidth mode for QAM */
	ret = FUNC2(state, 0x0009, &val);
	val &= 0xe3; /* STDOPDETTMODE[2:0]=0 VSB Off */
	ret = FUNC4(state, 0x0009, val);
	if (FUNC1(ret))
		goto fail;

	/* 3. : 64QAM/256QAM detection(manual, auto) */
	ret = FUNC2(state, 0x0009, &val);
	val &= 0xfc;
	/* Check for forced Manual modulation modes; otherwise always "auto" */
	if(forced_manual && (modulation != QAM_AUTO)){
		val |= 0x01; /* STDOPDETCMODE[1:0]= 1=Manual */
	} else {
		val |= 0x02; /* STDOPDETCMODE[1:0]= 2=Auto */
	}
	ret = FUNC4(state, 0x0009, val);
	if (FUNC1(ret))
		goto fail;

	/* 3a. : 64QAM/256QAM selection for manual */
	ret = FUNC2(state, 0x101a, &val);
	val &= 0xf8;
	if (modulation == QAM_64)
		val |= 0x02; /* QMDQMODE[2:0]=2=QAM64 */
	else
		val |= 0x04; /* QMDQMODE[2:0]=4=QAM256 */

	ret = FUNC4(state, 0x101a, val);
	if (FUNC1(ret))
		goto fail;

	/* 4. ADC sampling frequency rate(4x sampling) */
	ret = FUNC2(state, 0x000d, &val);
	val &= 0xbf;
	val |= 0x40; /* SAMPLING4XFEN=1 */
	ret = FUNC4(state, 0x000d, val);
	if (FUNC1(ret))
		goto fail;

	/* 5. No AICC operation in QAM mode */
	ret = FUNC2(state, 0x0024, &val);
	val &= 0x00;
	ret = FUNC4(state, 0x0024, val);
	if (FUNC1(ret))
		goto fail;

	/* 5.1 V0.36 SRDCHKALWAYS : For better QAM detection */
	ret = FUNC2(state, 0x000a, &val);
	val &= 0xfd;
	val |= 0x02;
	ret = FUNC4(state, 0x000a, val);
	if (FUNC1(ret))
		goto fail;

	/* 5.2 V0.36 Control of "no signal" detector function */
	ret = FUNC2(state, 0x2849, &val);
	val &= 0xdf;
	ret = FUNC4(state, 0x2849, val);
	if (FUNC1(ret))
		goto fail;

	/* 5.3 Fix for Blonder Tongue HDE-2H-QAM and AQM modulators */
	ret = FUNC2(state, 0x302b, &val);
	val &= 0x7f;  /* SELFSYNCFINDEN_CQS=0; disable auto reset */
	ret = FUNC4(state, 0x302b, val);
	if (FUNC1(ret))
		goto fail;

	/* 6. Reset */
	ret = FUNC3(state);
	if (FUNC1(ret))
		goto fail;

	FUNC0("complete\n");
fail:
	return ret;
}
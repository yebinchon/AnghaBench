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
typedef  int u32 ;
struct stb0899_state {int rx_freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISEQCRESET ; 
 int /*<<< orphan*/  ONECHIP_TRX ; 
 int /*<<< orphan*/  STB0899_DISCNTRL1 ; 
 int /*<<< orphan*/  STB0899_DISCNTRL2 ; 
 int /*<<< orphan*/  STB0899_DISF22 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct stb0899_state*) ; 
 int FUNC2 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct stb0899_state *state)
{
/*
	struct dvb_diseqc_slave_reply rx_data;
*/
	u8 f22_tx, reg;

	u32 mclk, tx_freq = 22000;/* count = 0, i; */
	reg = FUNC2(state, STB0899_DISCNTRL2);
	FUNC0(ONECHIP_TRX, reg, 0);
	FUNC3(state, STB0899_DISCNTRL2, reg);

	/* disable Tx spy	*/
	reg = FUNC2(state, STB0899_DISCNTRL1);
	FUNC0(DISEQCRESET, reg, 1);
	FUNC3(state, STB0899_DISCNTRL1, reg);

	reg = FUNC2(state, STB0899_DISCNTRL1);
	FUNC0(DISEQCRESET, reg, 0);
	FUNC3(state, STB0899_DISCNTRL1, reg);

	mclk = FUNC1(state);
	f22_tx = mclk / (tx_freq * 32);
	FUNC3(state, STB0899_DISF22, f22_tx); /* DiSEqC Tx freq	*/
	state->rx_freq = 20000;

	return 0;
}
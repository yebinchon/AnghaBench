#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct itd1000_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ symbol_rate; int pgaext; int bbgvmin; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  BBGVMIN ; 
 int /*<<< orphan*/  BW ; 
 int /*<<< orphan*/  CON1 ; 
 int /*<<< orphan*/  PLLFH ; 
 TYPE_1__* itd1000_lpf_pga ; 
 int FUNC1 (struct itd1000_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct itd1000_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 

__attribute__((used)) static void FUNC4(struct itd1000_state *state, u32 symbol_rate)
{
	u8 i;
	u8 con1    = FUNC1(state, CON1)    & 0xfd;
	u8 pllfh   = FUNC1(state, PLLFH)   & 0x0f;
	u8 bbgvmin = FUNC1(state, BBGVMIN) & 0xf0;
	u8 bw      = FUNC1(state, BW)      & 0xf0;

	FUNC3("symbol_rate = %d\n", symbol_rate);

	/* not sure what is that ? - starting to download the table */
	FUNC2(state, CON1, con1 | (1 << 1));

	for (i = 0; i < FUNC0(itd1000_lpf_pga); i++)
		if (symbol_rate < itd1000_lpf_pga[i].symbol_rate) {
			FUNC3("symrate: index: %d pgaext: %x, bbgvmin: %x\n", i, itd1000_lpf_pga[i].pgaext, itd1000_lpf_pga[i].bbgvmin);
			FUNC2(state, PLLFH,   pllfh | (itd1000_lpf_pga[i].pgaext << 4));
			FUNC2(state, BBGVMIN, bbgvmin | (itd1000_lpf_pga[i].bbgvmin));
			FUNC2(state, BW,      bw | (i & 0x0f));
			break;
		}

	FUNC2(state, CON1, con1 | (0 << 1));
}
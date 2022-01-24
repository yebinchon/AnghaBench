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
struct dchannel {int /*<<< orphan*/  state; int /*<<< orphan*/  err_tx; } ;
struct w6692_hw {int state; int fmask; int /*<<< orphan*/  name; struct dchannel dch; } ;

/* Variables and functions */
 int FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*) ; 
 int /*<<< orphan*/  W_CIR ; 
 int W_CIR_COD_MASK ; 
 int W_CIR_ICC ; 
 int W_CIR_SCC ; 
 int /*<<< orphan*/  W_D_CMDR ; 
 int /*<<< orphan*/  W_D_CMDR_RRST ; 
 int /*<<< orphan*/  W_D_EXIR ; 
 int W_D_EXI_ISC ; 
 int W_D_EXI_MOC ; 
 int W_D_EXI_RDOV ; 
 int W_D_EXI_TEXP ; 
 int W_D_EXI_TIN2 ; 
 int W_D_EXI_WEXP ; 
 int W_D_EXI_XCOL ; 
 int W_D_EXI_XDUN ; 
#define  W_L1IND_AI10 129 
#define  W_L1IND_AI8 128 
 int /*<<< orphan*/  W_MOSR ; 
 int /*<<< orphan*/  W_SQR ; 
 int /*<<< orphan*/  FUNC2 (struct w6692_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct w6692_hw*) ; 
 int led ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct w6692_hw*,int) ; 

__attribute__((used)) static void
FUNC6(struct w6692_hw *card)
{
	struct dchannel *dch = &card->dch;
	u8 exval, v1, cir;

	exval = FUNC0(card, W_D_EXIR);

	FUNC4("%s: D_EXIR %02x\n", card->name, exval);
	if (exval & (W_D_EXI_XDUN | W_D_EXI_XCOL)) {
		/* Transmit underrun/collision */
		FUNC4("%s: D-channel underrun/collision\n", card->name);
#ifdef ERROR_STATISTIC
		dch->err_tx++;
#endif
		FUNC3(card);
	}
	if (exval & W_D_EXI_RDOV) {	/* RDOV */
		FUNC4("%s: D-channel RDOV\n", card->name);
		FUNC2(card, W_D_CMDR, W_D_CMDR_RRST);
	}
	if (exval & W_D_EXI_TIN2)	/* TIN2 - never */
		FUNC4("%s: spurious TIN2 interrupt\n", card->name);
	if (exval & W_D_EXI_MOC) {	/* MOC - not supported */
		v1 = FUNC0(card, W_MOSR);
		FUNC4("%s: spurious MOC interrupt MOSR %02x\n",
			 card->name, v1);
	}
	if (exval & W_D_EXI_ISC) {	/* ISC - Level1 change */
		cir = FUNC0(card, W_CIR);
		FUNC4("%s: ISC CIR %02X\n", card->name, cir);
		if (cir & W_CIR_ICC) {
			v1 = cir & W_CIR_COD_MASK;
			FUNC4("%s: ph_state_change %x -> %x\n", card->name,
				 dch->state, v1);
			card->state = v1;
			if (card->fmask & led) {
				switch (v1) {
				case W_L1IND_AI8:
				case W_L1IND_AI10:
					FUNC5(card, 1);
					break;
				default:
					FUNC5(card, 0);
					break;
				}
			}
			FUNC1(card);
		}
		if (cir & W_CIR_SCC) {
			v1 = FUNC0(card, W_SQR);
			FUNC4("%s: SCC SQR %02X\n", card->name, v1);
		}
	}
	if (exval & W_D_EXI_WEXP)
		FUNC4("%s: spurious WEXP interrupt!\n", card->name);
	if (exval & W_D_EXI_TEXP)
		FUNC4("%s: spurious TEXP interrupt!\n", card->name);
}
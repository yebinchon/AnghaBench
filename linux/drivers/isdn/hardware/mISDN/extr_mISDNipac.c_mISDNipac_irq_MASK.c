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
struct isac_hw {int dummy; } ;
struct ipac_hw {int type; int /*<<< orphan*/  name; TYPE_1__* hscx; struct isac_hw isac; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ off; } ;

/* Variables and functions */
 int IPACX__ICA ; 
 int IPACX__ICB ; 
 int IPAC_D_TIN2 ; 
 scalar_t__ IPAC_ISTA ; 
 scalar_t__ IPAC_ISTAB ; 
 int IPAC_TYPE_HSCX ; 
 int IPAC_TYPE_IPAC ; 
 int IPAC_TYPE_IPACX ; 
 int IPAC__EXA ; 
 int IPAC__EXB ; 
 int IPAC__EXD ; 
 int IPAC__ICA ; 
 int IPAC__ICB ; 
 int IPAC__ICD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ ISACX_ISTA ; 
 int ISACX__CIC ; 
 int ISACX__ICD ; 
 int /*<<< orphan*/  ISAC_ISTA ; 
 int FUNC0 (struct ipac_hw*,scalar_t__) ; 
 int FUNC1 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct isac_hw*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

irqreturn_t
FUNC7(struct ipac_hw *ipac, int maxloop)
{
	int cnt = maxloop + 1;
	u8 ista, istad;
	struct isac_hw  *isac = &ipac->isac;

	if (ipac->type & IPAC_TYPE_IPACX) {
		ista = FUNC0(ipac, ISACX_ISTA);
		while (ista && --cnt) {
			FUNC4("%s: ISTA %02x\n", ipac->name, ista);
			if (ista & IPACX__ICA)
				FUNC2(&ipac->hscx[0], ista);
			if (ista & IPACX__ICB)
				FUNC2(&ipac->hscx[1], ista);
			if (ista & (ISACX__ICD | ISACX__CIC))
				FUNC3(&ipac->isac, ista);
			ista = FUNC0(ipac, ISACX_ISTA);
		}
	} else if (ipac->type & IPAC_TYPE_IPAC) {
		ista = FUNC0(ipac, IPAC_ISTA);
		while (ista && --cnt) {
			FUNC4("%s: ISTA %02x\n", ipac->name, ista);
			if (ista & (IPAC__ICD | IPAC__EXD)) {
				istad = FUNC1(isac, ISAC_ISTA);
				FUNC4("%s: ISTAD %02x\n", ipac->name, istad);
				if (istad & IPAC_D_TIN2)
					FUNC4("%s TIN2 irq\n", ipac->name);
				if (ista & IPAC__EXD)
					istad |= 1; /* ISAC EXI */
				FUNC3(isac, istad);
			}
			if (ista & (IPAC__ICA | IPAC__EXA))
				FUNC2(&ipac->hscx[0], ista);
			if (ista & (IPAC__ICB | IPAC__EXB))
				FUNC2(&ipac->hscx[1], ista);
			ista = FUNC0(ipac, IPAC_ISTA);
		}
	} else if (ipac->type & IPAC_TYPE_HSCX) {
		while (--cnt) {
			ista = FUNC0(ipac, IPAC_ISTAB + ipac->hscx[1].off);
			FUNC4("%s: B2 ISTA %02x\n", ipac->name, ista);
			if (ista)
				FUNC2(&ipac->hscx[1], ista);
			istad = FUNC1(isac, ISAC_ISTA);
			FUNC4("%s: ISTAD %02x\n", ipac->name, istad);
			if (istad)
				FUNC3(isac, istad);
			if (0 == (ista | istad))
				break;
		}
	}
	if (cnt > maxloop) /* only for ISAC/HSCX without PCI IRQ test */
		return IRQ_NONE;
	if (cnt < maxloop)
		FUNC4("%s: %d irqloops cpu%d\n", ipac->name,
			 maxloop - cnt, FUNC6());
	if (maxloop && !cnt)
		FUNC5("%s: %d IRQ LOOP cpu%d\n", ipac->name,
			  maxloop, FUNC6());
	return IRQ_HANDLED;
}
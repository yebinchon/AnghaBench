#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_3__ {int debug; } ;
struct hscx_hw {TYPE_2__* ip; TYPE_1__ bch; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int /*<<< orphan*/ * HSCXVer ; 
 int /*<<< orphan*/  HSCX_VSTR ; 
 int /*<<< orphan*/  IPAC_CCR1 ; 
 int /*<<< orphan*/  IPAC_CCR2 ; 
 int /*<<< orphan*/  IPAC_RAH2 ; 
 int /*<<< orphan*/  IPAC_RCCR ; 
 int /*<<< orphan*/  IPAC_RLCR ; 
 int IPAC_TYPE_HSCX ; 
 int /*<<< orphan*/  IPAC_XBCH ; 
 int /*<<< orphan*/  IPAC_XCCR ; 
 int FUNC0 (struct hscx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hscx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct hscx_hw *hx)
{
	u8 val;

	FUNC1(hx, IPAC_RAH2, 0xFF);
	FUNC1(hx, IPAC_XBCH, 0x00);
	FUNC1(hx, IPAC_RLCR, 0x00);

	if (hx->ip->type & IPAC_TYPE_HSCX) {
		FUNC1(hx, IPAC_CCR1, 0x85);
		val = FUNC0(hx, HSCX_VSTR);
		FUNC2("%s: HSCX VSTR %02x\n", hx->ip->name, val);
		if (hx->bch.debug & DEBUG_HW)
			FUNC3("%s: HSCX version %s\n", hx->ip->name,
				  HSCXVer[val & 0x0f]);
	} else
		FUNC1(hx, IPAC_CCR1, 0x82);
	FUNC1(hx, IPAC_CCR2, 0x30);
	FUNC1(hx, IPAC_XCCR, 0x07);
	FUNC1(hx, IPAC_RCCR, 0x07);
}
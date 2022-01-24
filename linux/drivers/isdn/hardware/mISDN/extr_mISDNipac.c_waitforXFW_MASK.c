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
struct TYPE_4__ {int /*<<< orphan*/  nr; } ;
struct hscx_hw {TYPE_2__ bch; TYPE_1__* ip; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPAC_STARB ; 
 int FUNC0 (struct hscx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(struct hscx_hw *hx)
{
	u8 starb, to = 50;

	while (to) {
		starb = FUNC0(hx, IPAC_STARB);
		if ((starb & 0x44) == 0x40)
			break;
		FUNC3(1);
		to--;
	}
	if (to < 50)
		FUNC1("%s: B%1d XFW %d us\n", hx->ip->name, hx->bch.nr,
			 50 - to);
	if (!to)
		FUNC2("%s: B%1d XFW timeout\n", hx->ip->name, hx->bch.nr);
}
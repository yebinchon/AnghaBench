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
typedef  int /*<<< orphan*/  u32 ;
struct w6692_hw {int /*<<< orphan*/  name; scalar_t__ addr; TYPE_1__* bc; } ;
struct TYPE_2__ {scalar_t__ addr; } ;

/* Variables and functions */
 int DEBUG_HW ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct w6692_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w6692_hw*) ; 
 int /*<<< orphan*/  W_D_EXIM ; 
 int /*<<< orphan*/  W_D_EXIR ; 
 int /*<<< orphan*/  W_D_RSTA ; 
 int /*<<< orphan*/  W_IMASK ; 
 int /*<<< orphan*/  W_ISTA ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct w6692_hw *card)
{
	u32	val;

	if (!FUNC4(card->addr, 256, card->name)) {
		FUNC2("%s: config port %x-%x already in use\n", card->name,
			card->addr, card->addr + 255);
		return -EIO;
	}
	FUNC1(card);
	card->bc[0].addr = card->addr;
	card->bc[1].addr = card->addr + 0x40;
	val = FUNC0(card, W_ISTA);
	if (debug & DEBUG_HW)
		FUNC3("%s ISTA=%02x\n", card->name, val);
	val = FUNC0(card, W_IMASK);
	if (debug & DEBUG_HW)
		FUNC3("%s IMASK=%02x\n", card->name, val);
	val = FUNC0(card, W_D_EXIR);
	if (debug & DEBUG_HW)
		FUNC3("%s D_EXIR=%02x\n", card->name, val);
	val = FUNC0(card, W_D_EXIM);
	if (debug & DEBUG_HW)
		FUNC3("%s D_EXIM=%02x\n", card->name, val);
	val = FUNC0(card, W_D_RSTA);
	if (debug & DEBUG_HW)
		FUNC3("%s D_RSTA=%02x\n", card->name, val);
	return 0;
}
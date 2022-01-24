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
typedef  int u16 ;
struct dib9000_state {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct dib9000_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib9000_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dib9000_state *state, u8 risc_id)
{
	u16 mbox_offs;
	u16 reset_reg;
	u16 tries = 1000;

	if (risc_id == 1)
		mbox_offs = 16;
	else
		mbox_offs = 0;

	/* Reset mailbox  */
	FUNC1(state, 1027 + mbox_offs, 0x8000);

	/* Read reset status */
	do {
		reset_reg = FUNC0(state, 1027 + mbox_offs);
		FUNC3(100);
	} while ((reset_reg & 0x8000) && --tries);

	if (reset_reg & 0x8000) {
		FUNC2("MBX: init ERROR, no response from RISC %c\n", 'A' + risc_id);
		return -EIO;
	}
	FUNC2("MBX: initialized\n");
	return 0;
}
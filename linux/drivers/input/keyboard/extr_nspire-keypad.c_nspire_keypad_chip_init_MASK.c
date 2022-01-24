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
struct nspire_keypad {unsigned long scan_interval; unsigned long row_delay; int int_mask; scalar_t__ reg_base; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int KEYPAD_BITMASK_COLS ; 
 int KEYPAD_BITMASK_ROWS ; 
 scalar_t__ KEYPAD_CNTL ; 
 scalar_t__ KEYPAD_INTMSK ; 
 scalar_t__ KEYPAD_SCAN_MODE ; 
 scalar_t__ KEYPAD_UNKNOWN_INT ; 
 scalar_t__ KEYPAD_UNKNOWN_INT_STS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct nspire_keypad *keypad)
{
	unsigned long val = 0, cycles_per_us, delay_cycles, row_delay_cycles;

	cycles_per_us = (FUNC1(keypad->clk) / 1000000);
	if (cycles_per_us == 0)
		cycles_per_us = 1;

	delay_cycles = cycles_per_us * keypad->scan_interval;
	FUNC0(delay_cycles >= (1 << 16)); /* Overflow */
	delay_cycles &= 0xffff;

	row_delay_cycles = cycles_per_us * keypad->row_delay;
	FUNC0(row_delay_cycles >= (1 << 14)); /* Overflow */
	row_delay_cycles &= 0x3fff;

	val |= 3 << 0; /* Set scan mode to 3 (continuous scan) */
	val |= row_delay_cycles << 2; /* Delay between scanning each row */
	val |= delay_cycles << 16; /* Delay between scans */
	FUNC2(val, keypad->reg_base + KEYPAD_SCAN_MODE);

	val = (KEYPAD_BITMASK_ROWS & 0xff) | (KEYPAD_BITMASK_COLS & 0xff)<<8;
	FUNC2(val, keypad->reg_base + KEYPAD_CNTL);

	/* Enable interrupts */
	keypad->int_mask = 1 << 1;
	FUNC2(keypad->int_mask, keypad->reg_base + KEYPAD_INTMSK);

	/* Disable GPIO interrupts to prevent hanging on touchpad */
	/* Possibly used to detect touchpad events */
	FUNC2(0, keypad->reg_base + KEYPAD_UNKNOWN_INT);
	/* Acknowledge existing interrupts */
	FUNC2(~0, keypad->reg_base + KEYPAD_UNKNOWN_INT_STS);

	return 0;
}
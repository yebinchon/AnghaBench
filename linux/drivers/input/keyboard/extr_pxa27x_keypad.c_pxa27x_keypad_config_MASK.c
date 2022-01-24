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
struct pxa27x_keypad_platform_data {unsigned int direct_key_num; int direct_key_mask; unsigned long debounce_interval; scalar_t__ enable_rotary1; scalar_t__ enable_rotary0; scalar_t__ matrix_key_cols; scalar_t__ matrix_key_rows; } ;
struct pxa27x_keypad {int direct_key_mask; struct pxa27x_keypad_platform_data* pdata; } ;

/* Variables and functions */
 unsigned long DEFAULT_KPREC ; 
 int /*<<< orphan*/  KPC ; 
 unsigned long KPC_ASACT ; 
 unsigned long KPC_DE ; 
 unsigned long KPC_DIE ; 
 unsigned long FUNC0 (unsigned int) ; 
 unsigned long KPC_ME ; 
 unsigned long KPC_MIE ; 
 unsigned long FUNC1 (scalar_t__) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 unsigned long KPC_MS_ALL ; 
 unsigned long KPC_REE0 ; 
 unsigned long KPC_REE1 ; 
 unsigned long KPC_RE_ZERO_DEB ; 
 int /*<<< orphan*/  KPKDI ; 
 int /*<<< orphan*/  KPREC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct pxa27x_keypad *keypad)
{
	const struct pxa27x_keypad_platform_data *pdata = keypad->pdata;
	unsigned int mask = 0, direct_key_num = 0;
	unsigned long kpc = 0;

	/* clear pending interrupt bit */
	FUNC3(KPC);

	/* enable matrix keys with automatic scan */
	if (pdata->matrix_key_rows && pdata->matrix_key_cols) {
		kpc |= KPC_ASACT | KPC_MIE | KPC_ME | KPC_MS_ALL;
		kpc |= FUNC2(pdata->matrix_key_rows) |
		       FUNC1(pdata->matrix_key_cols);
	}

	/* enable rotary key, debounce interval same as direct keys */
	if (pdata->enable_rotary0) {
		mask |= 0x03;
		direct_key_num = 2;
		kpc |= KPC_REE0;
	}

	if (pdata->enable_rotary1) {
		mask |= 0x0c;
		direct_key_num = 4;
		kpc |= KPC_REE1;
	}

	if (pdata->direct_key_num > direct_key_num)
		direct_key_num = pdata->direct_key_num;

	/*
	 * Direct keys usage may not start from KP_DKIN0, check the platfrom
	 * mask data to config the specific.
	 */
	if (pdata->direct_key_mask)
		keypad->direct_key_mask = pdata->direct_key_mask;
	else
		keypad->direct_key_mask = ((1 << direct_key_num) - 1) & ~mask;

	/* enable direct key */
	if (direct_key_num)
		kpc |= KPC_DE | KPC_DIE | FUNC0(direct_key_num);

	FUNC4(KPC, kpc | KPC_RE_ZERO_DEB);
	FUNC4(KPREC, DEFAULT_KPREC);
	FUNC4(KPKDI, pdata->debounce_interval);
}
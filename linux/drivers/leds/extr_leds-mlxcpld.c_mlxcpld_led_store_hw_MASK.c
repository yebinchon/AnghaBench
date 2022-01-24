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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXPLAT_CPLD_LPC_REG_BASE_ADRR ; 
 TYPE_1__* mlxcpld_led ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(u8 mask, u8 off, u8 vset)
{
	u8 nib, val;

	/*
	 * Each LED is controlled through low or high nibble of the relevant
	 * CPLD register. Register offset is specified by off parameter.
	 * Parameter vset provides color code: 0x0 for off, 0x5 for solid red,
	 * 0x6 for 3Hz blink red, 0xd for solid green, 0xe for 3Hz blink
	 * green.
	 * Parameter mask specifies which nibble is used for specific LED: mask
	 * 0xf0 - lower nibble is to be used (bits from 0 to 3), mask 0x0f -
	 * higher nibble (bits from 4 to 7).
	 */
	FUNC1(&mlxcpld_led->lock);
	FUNC0(MLXPLAT_CPLD_LPC_REG_BASE_ADRR, off, 1,
				    &val);
	nib = (mask == 0xf0) ? vset : (vset << 4);
	val = (val & mask) | nib;
	FUNC0(MLXPLAT_CPLD_LPC_REG_BASE_ADRR, off, 0,
				    &val);
	FUNC2(&mlxcpld_led->lock);
}
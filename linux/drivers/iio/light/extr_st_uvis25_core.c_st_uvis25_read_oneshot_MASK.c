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
typedef  int /*<<< orphan*/  u8 ;
struct st_uvis25_hw {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int IIO_VAL_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct st_uvis25_hw*,int) ; 

__attribute__((used)) static int FUNC3(struct st_uvis25_hw *hw, u8 addr, int *val)
{
	int err;

	err = FUNC2(hw, true);
	if (err < 0)
		return err;

	FUNC0(1500);

	/*
	 * in order to avoid possible race conditions with interrupt
	 * generation, disable the sensor first and then poll output
	 * register. That sequence guarantees the interrupt will be reset
	 * when irq line is unmasked
	 */
	err = FUNC2(hw, false);
	if (err < 0)
		return err;

	err = FUNC1(hw->regmap, addr, val);

	return err < 0 ? err : IIO_VAL_INT;
}
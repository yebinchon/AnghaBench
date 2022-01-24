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
struct hts221_hw {int enabled; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  HTS221_ENABLE_MASK ; 
 int /*<<< orphan*/  HTS221_REG_CNTRL1_ADDR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct hts221_hw *hw, bool enable)
{
	int err;

	err = FUNC1(hw->regmap, HTS221_REG_CNTRL1_ADDR,
				 HTS221_ENABLE_MASK,
				 FUNC0(HTS221_ENABLE_MASK, enable));
	if (err < 0)
		return err;

	hw->enabled = enable;

	return 0;
}
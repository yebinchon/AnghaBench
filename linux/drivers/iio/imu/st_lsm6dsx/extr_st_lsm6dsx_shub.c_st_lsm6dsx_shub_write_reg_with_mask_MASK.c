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
struct st_lsm6dsx_hw {int /*<<< orphan*/  page_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct st_lsm6dsx_hw*,int) ; 

__attribute__((used)) static int
FUNC4(struct st_lsm6dsx_hw *hw, u8 addr,
				    u8 mask, u8 val)
{
	int err;

	FUNC0(&hw->page_lock);
	err = FUNC3(hw, true);
	if (err < 0)
		goto out;

	err = FUNC2(hw->regmap, addr, mask, val);

	FUNC3(hw, false);
out:
	FUNC1(&hw->page_lock);

	return err;
}
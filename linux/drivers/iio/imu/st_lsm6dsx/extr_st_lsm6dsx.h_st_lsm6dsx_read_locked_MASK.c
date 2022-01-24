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
struct st_lsm6dsx_hw {int /*<<< orphan*/  page_lock; int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,void*,unsigned int) ; 

__attribute__((used)) static inline int
FUNC3(struct st_lsm6dsx_hw *hw, unsigned int addr,
		       void *val, unsigned int len)
{
	int err;

	FUNC0(&hw->page_lock);
	err = FUNC2(hw->regmap, addr, val, len);
	FUNC1(&hw->page_lock);

	return err;
}
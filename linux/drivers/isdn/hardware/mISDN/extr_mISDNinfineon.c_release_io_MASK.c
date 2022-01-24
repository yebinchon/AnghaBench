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
struct TYPE_4__ {void* mode; int /*<<< orphan*/  size; int /*<<< orphan*/  start; scalar_t__ p; } ;
struct TYPE_3__ {void* mode; int /*<<< orphan*/  size; int /*<<< orphan*/  start; scalar_t__ p; } ;
struct inf_hw {TYPE_2__ addr; TYPE_1__ cfg; } ;

/* Variables and functions */
 void* AM_NONE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct inf_hw *hw)
{
	if (hw->cfg.mode) {
		if (hw->cfg.p) {
			FUNC1(hw->cfg.start, hw->cfg.size);
			FUNC0(hw->cfg.p);
		} else
			FUNC2(hw->cfg.start, hw->cfg.size);
		hw->cfg.mode = AM_NONE;
	}
	if (hw->addr.mode) {
		if (hw->addr.p) {
			FUNC1(hw->addr.start, hw->addr.size);
			FUNC0(hw->addr.p);
		} else
			FUNC2(hw->addr.start, hw->addr.size);
		hw->addr.mode = AM_NONE;
	}
}
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
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 

__attribute__((used)) static long FUNC3(struct clk_hw *hw, unsigned long rate,
				   unsigned long *prate)
{
	unsigned long best_parent;
	unsigned int factor;

	factor = FUNC2(rate);

	best_parent = rate * factor;
	*prate = FUNC1(FUNC0(hw), best_parent);

	return *prate / factor;
}
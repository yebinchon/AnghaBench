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
struct clk_rate_request {unsigned long rate; unsigned long best_parent_rate; struct clk_hw* best_parent_hw; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int FUNC1 (struct clk_hw*) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,int) ; 
 unsigned long FUNC3 (struct clk_hw*,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct clk_hw *hw,
					struct clk_rate_request *req)
{
	unsigned long rate = req->rate;
	unsigned long best_rate = 0;
	struct clk_hw *best_parent = NULL;
	struct clk_hw *parent;
	int best_div = 1;
	int i, p;

	for (p = 0; p < FUNC1(hw); p++) {
		parent = FUNC2(hw, p);
		if (!parent)
			continue;

		for (i = 1; i <= 16; i++) {
			unsigned long ideal = rate * i;
			unsigned long rounded;

			rounded = FUNC3(parent, ideal);

			if (rounded == ideal) {
				best_rate = rounded;
				best_div = i;
				best_parent = parent;
				break;
			}

			if (!best_rate ||
			    FUNC0(rate - rounded / i) <
			    FUNC0(rate - best_rate / best_div)) {
				best_rate = rounded;
				best_div = i;
				best_parent = parent;
			}
		}

		if (best_rate / best_div == rate)
			break;
	}

	req->rate = best_rate / best_div;
	req->best_parent_rate = best_rate;
	req->best_parent_hw = best_parent;

	return 0;
}
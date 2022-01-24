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
typedef  int /*<<< orphan*/  u16 ;
struct legacy_clk_set_value {int /*<<< orphan*/  rate; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  stat ;
typedef  int /*<<< orphan*/  clk ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SET_CLOCK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct legacy_clk_set_value*,int,int*,int) ; 

__attribute__((used)) static int FUNC3(u16 clk_id, unsigned long rate)
{
	int stat;
	struct legacy_clk_set_value clk = {
		.id = FUNC0(clk_id),
		.rate = FUNC1(rate)
	};

	return FUNC2(CMD_SET_CLOCK_VALUE, &clk, sizeof(clk),
				 &stat, sizeof(stat));
}
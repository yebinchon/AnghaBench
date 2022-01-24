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
typedef  int u32 ;
struct gf100_clk {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 

__attribute__((used)) static u32
FUNC1(struct gf100_clk *clk, int idx, u32 ref, u32 freq, u32 *ddiv)
{
	u32 div = FUNC0((ref * 2) / freq, (u32)65);
	if (div < 2)
		div = 2;

	*ddiv = div - 2;
	return (ref * 2) / div;
}
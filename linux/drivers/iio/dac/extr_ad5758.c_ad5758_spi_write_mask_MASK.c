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
struct ad5758_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ad5758_state*,unsigned int) ; 
 int FUNC1 (struct ad5758_state*,unsigned int,int) ; 

__attribute__((used)) static int FUNC2(struct ad5758_state *st,
				 unsigned int addr,
				 unsigned long int mask,
				 unsigned int val)
{
	int regval;

	regval = FUNC0(st, addr);
	if (regval < 0)
		return regval;

	regval &= ~mask;
	regval |= val;

	return FUNC1(st, addr, regval);
}
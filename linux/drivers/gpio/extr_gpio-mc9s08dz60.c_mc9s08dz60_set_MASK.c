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
typedef  int u8 ;
struct mc9s08dz60 {int /*<<< orphan*/  client; } ;
typedef  int s32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int*,int*) ; 

__attribute__((used)) static int FUNC3(struct mc9s08dz60 *mc9s, unsigned offset, int val)
{
	u8 reg, bit;
	s32 value;

	FUNC2(offset, &reg, &bit);
	value = FUNC0(mc9s->client, reg);
	if (value >= 0) {
		if (val)
			value |= 1 << bit;
		else
			value &= ~(1 << bit);

		return FUNC1(mc9s->client, reg, value);
	} else
		return value;

}
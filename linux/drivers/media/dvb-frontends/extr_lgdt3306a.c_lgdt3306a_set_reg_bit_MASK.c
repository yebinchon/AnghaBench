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
typedef  int /*<<< orphan*/  u16 ;
struct lgdt3306a_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (struct lgdt3306a_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct lgdt3306a_state *state,
				u16 reg, int bit, int onoff)
{
	u8 val;
	int ret;

	FUNC0("reg: 0x%04x, bit: %d, level: %d\n", reg, bit, onoff);

	ret = FUNC2(state, reg, &val);
	if (FUNC1(ret))
		goto fail;

	val &= ~(1 << bit);
	val |= (onoff & 1) << bit;

	ret = FUNC3(state, reg, val);
	FUNC1(ret);
fail:
	return ret;
}
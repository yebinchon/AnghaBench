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
struct lg216x_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lg216x_state*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct lg216x_state*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct lg216x_state *state,
			      u16 reg, int bit, int onoff)
{
	u8 val;
	int ret;

	FUNC3("reg: 0x%04x, bit: %d, level: %d\n", reg, bit, onoff);

	ret = FUNC0(state, reg, &val);
	if (FUNC2(ret))
		goto fail;

	val &= ~(1 << bit);
	val |= (onoff & 1) << bit;

	ret = FUNC1(state, reg, val);
	FUNC2(ret);
fail:
	return ret;
}
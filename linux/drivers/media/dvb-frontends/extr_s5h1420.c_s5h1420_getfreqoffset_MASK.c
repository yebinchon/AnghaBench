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
struct s5h1420_state {int fclk; } ;

/* Variables and functions */
 int FUNC0 (struct s5h1420_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct s5h1420_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct s5h1420_state* state)
{
	int val;

	FUNC1(state, 0x06, FUNC0(state, 0x06) | 0x08);
	val  = FUNC0(state, 0x0e) << 16;
	val |= FUNC0(state, 0x0f) << 8;
	val |= FUNC0(state, 0x10);
	FUNC1(state, 0x06, FUNC0(state, 0x06) & 0xf7);

	if (val & 0x800000)
		val |= 0xff000000;

	/* remember freqoffset is in kHz, but the chip wants the offset in Hz, so
	 * divide fclk by 1000000 to get the correct value. */
	val = (((-val) * (state->fclk/1000000)) / (1<<24));

	return val;
}
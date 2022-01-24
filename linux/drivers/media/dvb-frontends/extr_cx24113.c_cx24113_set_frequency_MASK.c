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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct cx24113_state {scalar_t__ vcodiv; int /*<<< orphan*/  refdiv; int /*<<< orphan*/  frequency; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 scalar_t__ VCODIV2 ; 
 int /*<<< orphan*/  FUNC0 (struct cx24113_state*,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct cx24113_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cx24113_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cx24113_state*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct cx24113_state *state, u32 frequency)
{
	u8 r = 1; /* or 2 */
	u16 n = 6;
	s32 f = 0;

	r = FUNC1(state, 0x14);
	FUNC3(state, 0x14, r & 0x3f);

	r = FUNC1(state, 0x10);
	FUNC3(state, 0x10, r & 0xbf);

	state->frequency = frequency;

	FUNC4("tuning to frequency: %d\n", frequency);

	FUNC0(state, &n, &f);
	FUNC2(state, n, f, state->refdiv);

	r = FUNC1(state, 0x18) & 0xbf;
	if (state->vcodiv != VCODIV2)
		r |= 1 << 6;
	FUNC3(state, 0x18, r);

	/* The need for this sleep is not clear. But helps in some cases */
	FUNC5(5);

	r = FUNC1(state, 0x1c) & 0xef;
	FUNC3(state, 0x1c, r | (1 << 4));
	return 0;
}
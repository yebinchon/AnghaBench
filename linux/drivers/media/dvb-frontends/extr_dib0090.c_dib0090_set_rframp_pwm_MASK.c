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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct dib0090_state {scalar_t__ const* rf_ramp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dib0090_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dib0090_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib0090_state*,int,scalar_t__ const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dib0090_state *state, const u16 * cfg)
{
	state->rf_ramp = cfg;

	FUNC1(state, 0x2a, 0xffff);

	FUNC3("total RF gain: %ddB, step: %d\n", (u32) cfg[0], FUNC0(state, 0x2a));

	FUNC2(state, 0x2c, cfg + 3, 6);
	FUNC2(state, 0x3e, cfg + 9, 2);
}
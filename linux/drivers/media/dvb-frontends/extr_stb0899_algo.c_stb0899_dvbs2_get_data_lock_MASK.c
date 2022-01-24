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
typedef  int /*<<< orphan*/  u8 ;
struct stb0899_state {int /*<<< orphan*/  verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFGPDELSTATUS_LOCK ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  STB0899_CFGPDELSTATUS1 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct stb0899_state *state, int timeout)
{
	int time = 0, lock = 0;
	u8 reg;

	while ((!lock) && (time < timeout)) {
		reg = FUNC2(state, STB0899_CFGPDELSTATUS1);
		FUNC1(state->verbose, FE_DEBUG, 1, "---------> CFGPDELSTATUS=[0x%02x]", reg);
		lock = FUNC0(CFGPDELSTATUS_LOCK, reg);
		time++;
	}

	return lock;
}
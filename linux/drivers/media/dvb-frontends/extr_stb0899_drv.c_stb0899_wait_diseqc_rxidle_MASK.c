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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  RXEND ; 
 int /*<<< orphan*/  STB0899_DISRX_ST0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct stb0899_state *state, int timeout)
{
	u8 reg = 0;
	unsigned long start = jiffies;

	while (!FUNC0(RXEND, reg)) {
		reg = FUNC3(state, STB0899_DISRX_ST0);
		if (FUNC4(jiffies, start + timeout)) {
			FUNC1(state->verbose, FE_ERROR, 1, "timed out!!");
			return -ETIMEDOUT;
		}
		FUNC2(10);
	}

	return 0;
}
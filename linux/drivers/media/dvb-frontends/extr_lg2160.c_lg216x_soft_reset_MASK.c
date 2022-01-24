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
struct lg216x_state {int /*<<< orphan*/  last_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct lg216x_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct lg216x_state *state)
{
	int ret;

	FUNC2("\n");

	ret = FUNC1(state, 0x0002, 0x00);
	if (FUNC3(ret))
		goto fail;

	FUNC4(20);
	ret = FUNC1(state, 0x0002, 0x01);
	if (FUNC3(ret))
		goto fail;

	state->last_reset = FUNC0(jiffies);
fail:
	return ret;
}
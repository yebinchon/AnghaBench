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
struct lg216x_state {int parade_id; } ;

/* Variables and functions */
 int FUNC0 (struct lg216x_state*,int,int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct lg216x_state *state, int id)
{
	int ret;

	ret = FUNC0(state, 0x013e, id & 0x7f);
	if (FUNC1(ret))
		goto fail;

	state->parade_id = id & 0x7f;
fail:
	return ret;
}
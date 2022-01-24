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
struct lgdt3306a_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct lgdt3306a_state*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct lgdt3306a_state *state)
{
	int ret;

	FUNC0("\n");

	ret = FUNC2(state, 0x0000, 7, 0);
	if (FUNC1(ret))
		goto fail;

	FUNC3(20);
	ret = FUNC2(state, 0x0000, 7, 1);
	FUNC1(ret);

fail:
	return ret;
}
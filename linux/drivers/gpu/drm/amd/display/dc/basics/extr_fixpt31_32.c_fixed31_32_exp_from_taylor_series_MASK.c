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
struct fixed31_32 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct fixed31_32 FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 struct fixed31_32 FUNC3 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fixed31_32,struct fixed31_32) ; 
 int /*<<< orphan*/  dc_fixpt_one ; 

__attribute__((used)) static struct fixed31_32 FUNC6(struct fixed31_32 arg)
{
	unsigned int n = 9;

	struct fixed31_32 res = FUNC3(
		n + 2,
		n + 1);
	/* TODO find correct res */

	FUNC0(FUNC4(arg, dc_fixpt_one));

	do
		res = FUNC1(
			dc_fixpt_one,
			FUNC2(
				FUNC5(
					arg,
					res),
				n));
	while (--n != 1);

	return FUNC1(
		dc_fixpt_one,
		FUNC5(
			arg,
			res));
}
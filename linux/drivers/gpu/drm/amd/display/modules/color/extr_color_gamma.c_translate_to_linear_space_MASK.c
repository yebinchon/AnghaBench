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
 struct fixed31_32 FUNC0 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC1 (struct fixed31_32,struct fixed31_32) ; 
 scalar_t__ FUNC2 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC3 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC4 (struct fixed31_32) ; 
 struct fixed31_32 dc_fixpt_one ; 
 struct fixed31_32 FUNC5 (struct fixed31_32,struct fixed31_32) ; 
 struct fixed31_32 FUNC6 (struct fixed31_32,struct fixed31_32) ; 

__attribute__((used)) static struct fixed31_32 FUNC7(
	struct fixed31_32 arg,
	struct fixed31_32 a0,
	struct fixed31_32 a1,
	struct fixed31_32 a2,
	struct fixed31_32 a3,
	struct fixed31_32 gamma)
{
	struct fixed31_32 linear;

	a0 = FUNC3(a0, a1);
	if (FUNC2(arg, FUNC4(a0)))

		linear = FUNC4(
				 FUNC5(
				 FUNC1(
				 FUNC6(a2, arg),
				 FUNC0(
				 dc_fixpt_one, a3)), gamma));

	else if (FUNC2(FUNC4(a0), arg) &&
			 FUNC2(arg, a0))
		linear = FUNC1(arg, a1);
	else
		linear =  FUNC5(
					FUNC1(
					FUNC0(a2, arg),
					FUNC0(
					dc_fixpt_one, a3)), gamma);

	return linear;
}
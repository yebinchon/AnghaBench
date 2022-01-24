#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fixed31_32 {scalar_t__ value; } ;
struct TYPE_4__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fixed31_32) ; 
 struct fixed31_32 FUNC1 (int /*<<< orphan*/ ,struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_1__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fixed31_32,struct fixed31_32) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int) ; 
 struct fixed31_32 dc_fixpt_one ; 
 struct fixed31_32 FUNC6 (struct fixed31_32) ; 
 struct fixed31_32 FUNC7 (struct fixed31_32,int /*<<< orphan*/ ) ; 
 TYPE_1__ dc_fixpt_two_pi ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 

struct fixed31_32 FUNC9(struct fixed31_32 arg)
{
	struct fixed31_32 square;

	struct fixed31_32 res = dc_fixpt_one;

	int n = 27;

	struct fixed31_32 arg_norm = arg;

	if (FUNC3(
		dc_fixpt_two_pi,
		FUNC0(arg))) {
		arg_norm = FUNC7(
			arg_norm,
			FUNC5(
				dc_fixpt_two_pi,
				(int)FUNC8(
					arg_norm.value,
					dc_fixpt_two_pi.value)));
	}

	square = FUNC6(arg_norm);

	do {
		res = FUNC7(
			dc_fixpt_one,
			FUNC2(
				FUNC4(
					square,
					res),
				n * (n - 1)));

		n -= 2;
	} while (n > 2);

	if (arg.value != arg_norm.value)
		res = FUNC1(
			FUNC4(res, arg_norm),
			arg);

	return res;
}
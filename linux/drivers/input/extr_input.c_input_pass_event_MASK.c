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
struct input_value {unsigned int member_0; unsigned int member_1; int member_2; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct input_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,struct input_value*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev,
			     unsigned int type, unsigned int code, int value)
{
	struct input_value vals[] = { { type, code, value } };

	FUNC1(dev, vals, FUNC0(vals));
}
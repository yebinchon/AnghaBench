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
struct touchscreen_properties {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MT_POSITION_X ; 
 int /*<<< orphan*/  ABS_MT_POSITION_Y ; 
 int /*<<< orphan*/  ABS_X ; 
 int /*<<< orphan*/  ABS_Y ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct touchscreen_properties const*,unsigned int*,unsigned int*) ; 

void FUNC2(struct input_dev *input,
			    const struct touchscreen_properties *prop,
			    unsigned int x, unsigned int y,
			    bool multitouch)
{
	FUNC1(prop, &x, &y);
	FUNC0(input, multitouch ? ABS_MT_POSITION_X : ABS_X, x);
	FUNC0(input, multitouch ? ABS_MT_POSITION_Y : ABS_Y, y);
}
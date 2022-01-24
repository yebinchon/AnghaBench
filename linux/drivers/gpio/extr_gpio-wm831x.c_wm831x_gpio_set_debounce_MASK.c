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
struct wm831x {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 unsigned int WM831X_GPIO1_CONTROL ; 
 int WM831X_GPN_FN_MASK ; 
 int FUNC0 (struct wm831x*,int) ; 
 int FUNC1 (struct wm831x*,int,int,int) ; 

__attribute__((used)) static int FUNC2(struct wm831x *wm831x, unsigned offset,
				    unsigned debounce)
{
	int reg = WM831X_GPIO1_CONTROL + offset;
	int ret, fn;

	ret = FUNC0(wm831x, reg);
	if (ret < 0)
		return ret;

	switch (ret & WM831X_GPN_FN_MASK) {
	case 0:
	case 1:
		break;
	default:
		/* Not in GPIO mode */
		return -EBUSY;
	}

	if (debounce >= 32 && debounce <= 64)
		fn = 0;
	else if (debounce >= 4000 && debounce <= 8000)
		fn = 1;
	else
		return -EINVAL;

	return FUNC1(wm831x, reg, WM831X_GPN_FN_MASK, fn);
}
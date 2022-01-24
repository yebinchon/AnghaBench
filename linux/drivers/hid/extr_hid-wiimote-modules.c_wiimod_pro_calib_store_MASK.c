#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void** calib_pro_sticks; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  void* s16 ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  WIIPROTO_FLAG_PRO_CALIB_DONE ; 
 struct wiimote_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,char*,void**,void**,void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				      struct device_attribute *attr,
				      const char *buf, size_t count)
{
	struct wiimote_data *wdata = FUNC0(dev);
	int r;
	s16 x1, y1, x2, y2;

	if (!FUNC4(buf, "scan\n", 5)) {
		FUNC1(&wdata->state.lock);
		wdata->state.flags &= ~WIIPROTO_FLAG_PRO_CALIB_DONE;
		FUNC2(&wdata->state.lock);
	} else {
		r = FUNC3(buf, "%hd:%hd %hd:%hd", &x1, &y1, &x2, &y2);
		if (r != 4)
			return -EINVAL;

		FUNC1(&wdata->state.lock);
		wdata->state.flags |= WIIPROTO_FLAG_PRO_CALIB_DONE;
		FUNC2(&wdata->state.lock);

		wdata->state.calib_pro_sticks[0] = x1;
		wdata->state.calib_pro_sticks[1] = y1;
		wdata->state.calib_pro_sticks[2] = x2;
		wdata->state.calib_pro_sticks[3] = y2;
	}

	return FUNC5(buf, PAGE_SIZE);
}
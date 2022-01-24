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
struct TYPE_2__ {int /*<<< orphan*/ * calib_pro_sticks; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 struct wiimote_data* FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
				     struct device_attribute *attr,
				     char *out)
{
	struct wiimote_data *wdata = FUNC0(dev);
	int r;

	r = 0;
	r += FUNC1(&out[r], "%+06hd:", wdata->state.calib_pro_sticks[0]);
	r += FUNC1(&out[r], "%+06hd ", wdata->state.calib_pro_sticks[1]);
	r += FUNC1(&out[r], "%+06hd:", wdata->state.calib_pro_sticks[2]);
	r += FUNC1(&out[r], "%+06hd\n", wdata->state.calib_pro_sticks[3]);

	return r;
}
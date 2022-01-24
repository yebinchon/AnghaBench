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
struct TYPE_2__ {size_t** calib_bboard; int /*<<< orphan*/  lock; } ;
struct wiimote_data {TYPE_1__ state; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  size_t __u8 ;
typedef  int __u16 ;

/* Variables and functions */
 int EIO ; 
 struct wiimote_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int FUNC4 (struct wiimote_data*) ; 
 int FUNC5 (struct wiimote_data*,int,size_t*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wiimote_data*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
					struct device_attribute *attr,
					char *out)
{
	struct wiimote_data *wdata = FUNC0(dev);
	int i, j, ret;
	__u16 val;
	__u8 buf[24], offs;

	ret = FUNC4(wdata);
	if (ret)
		return ret;

	ret = FUNC5(wdata, 0xa40024, buf, 12);
	if (ret != 12) {
		FUNC6(wdata);
		return ret < 0 ? ret : -EIO;
	}
	ret = FUNC5(wdata, 0xa40024 + 12, buf + 12, 12);
	if (ret != 12) {
		FUNC6(wdata);
		return ret < 0 ? ret : -EIO;
	}

	FUNC6(wdata);

	FUNC1(&wdata->state.lock);
	offs = 0;
	for (i = 0; i < 3; ++i) {
		for (j = 0; j < 4; ++j) {
			wdata->state.calib_bboard[j][i] = buf[offs];
			wdata->state.calib_bboard[j][i] <<= 8;
			wdata->state.calib_bboard[j][i] |= buf[offs + 1];
			offs += 2;
		}
	}
	FUNC2(&wdata->state.lock);

	ret = 0;
	for (i = 0; i < 3; ++i) {
		for (j = 0; j < 4; ++j) {
			val = wdata->state.calib_bboard[j][i];
			if (i == 2 && j == 3)
				ret += FUNC3(&out[ret], "%04x\n", val);
			else
				ret += FUNC3(&out[ret], "%04x:", val);
		}
	}

	return ret;
}
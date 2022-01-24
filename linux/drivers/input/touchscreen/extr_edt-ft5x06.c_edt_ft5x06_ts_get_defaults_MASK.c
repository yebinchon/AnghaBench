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
typedef  void* u32 ;
struct edt_reg_addr {int /*<<< orphan*/  reg_offset_y; int /*<<< orphan*/  reg_offset_x; int /*<<< orphan*/  reg_offset; int /*<<< orphan*/  reg_gain; int /*<<< orphan*/  reg_threshold; } ;
struct edt_ft5x06_ts_data {void* offset_y; void* offset_x; void* offset; void* gain; void* threshold; struct edt_reg_addr reg_addr; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*,char*,void**) ; 
 int /*<<< orphan*/  FUNC1 (struct edt_ft5x06_ts_data*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC2(struct device *dev,
				       struct edt_ft5x06_ts_data *tsdata)
{
	struct edt_reg_addr *reg_addr = &tsdata->reg_addr;
	u32 val;
	int error;

	error = FUNC0(dev, "threshold", &val);
	if (!error) {
		FUNC1(tsdata, reg_addr->reg_threshold, val);
		tsdata->threshold = val;
	}

	error = FUNC0(dev, "gain", &val);
	if (!error) {
		FUNC1(tsdata, reg_addr->reg_gain, val);
		tsdata->gain = val;
	}

	error = FUNC0(dev, "offset", &val);
	if (!error) {
		FUNC1(tsdata, reg_addr->reg_offset, val);
		tsdata->offset = val;
	}

	error = FUNC0(dev, "offset-x", &val);
	if (!error) {
		FUNC1(tsdata, reg_addr->reg_offset_x, val);
		tsdata->offset_x = val;
	}

	error = FUNC0(dev, "offset-y", &val);
	if (!error) {
		FUNC1(tsdata, reg_addr->reg_offset_y, val);
		tsdata->offset_y = val;
	}
}
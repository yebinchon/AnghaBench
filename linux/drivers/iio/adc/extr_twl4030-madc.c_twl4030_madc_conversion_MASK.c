#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct twl4030_madc_request {size_t method; int /*<<< orphan*/  raw; int /*<<< orphan*/  rbuf; int /*<<< orphan*/  channels; scalar_t__ do_avg; } ;
struct twl4030_madc_conversion_method {int /*<<< orphan*/  rbase; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  avg; int /*<<< orphan*/  sel; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_1__* requests; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int active; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 size_t TWL4030_MADC_RT ; 
 size_t TWL4030_MADC_SW2 ; 
 int /*<<< orphan*/  TWL4030_MODULE_MADC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct twl4030_madc_conversion_method* twl4030_conversion_methods ; 
 TYPE_2__* twl4030_madc ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,size_t) ; 
 int FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct twl4030_madc_request *req)
{
	const struct twl4030_madc_conversion_method *method;
	int ret;

	if (!req || !twl4030_madc)
		return -EINVAL;

	FUNC1(&twl4030_madc->lock);
	if (req->method < TWL4030_MADC_RT || req->method > TWL4030_MADC_SW2) {
		ret = -EINVAL;
		goto out;
	}
	/* Do we have a conversion request ongoing */
	if (twl4030_madc->requests[req->method].active) {
		ret = -EBUSY;
		goto out;
	}
	method = &twl4030_conversion_methods[req->method];
	/* Select channels to be converted */
	ret = FUNC6(TWL4030_MODULE_MADC, req->channels, method->sel);
	if (ret) {
		FUNC0(twl4030_madc->dev,
			"unable to write sel register 0x%X\n", method->sel);
		goto out;
	}
	/* Select averaging for all channels if do_avg is set */
	if (req->do_avg) {
		ret = FUNC6(TWL4030_MODULE_MADC, req->channels,
				       method->avg);
		if (ret) {
			FUNC0(twl4030_madc->dev,
				"unable to write avg register 0x%X\n",
				method->avg);
			goto out;
		}
	}
	/* With RT method we should not be here anymore */
	if (req->method == TWL4030_MADC_RT) {
		ret = -EINVAL;
		goto out;
	}
	ret = FUNC4(twl4030_madc, req->method);
	if (ret < 0)
		goto out;
	twl4030_madc->requests[req->method].active = 1;
	/* Wait until conversion is ready (ctrl register returns EOC) */
	ret = FUNC5(twl4030_madc, 5, method->ctrl);
	if (ret) {
		twl4030_madc->requests[req->method].active = 0;
		goto out;
	}
	ret = FUNC3(twl4030_madc, method->rbase,
					 req->channels, req->rbuf, req->raw);
	twl4030_madc->requests[req->method].active = 0;

out:
	FUNC2(&twl4030_madc->lock);

	return ret;
}
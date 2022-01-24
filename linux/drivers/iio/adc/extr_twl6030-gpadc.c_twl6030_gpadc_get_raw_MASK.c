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
typedef  int u8 ;
struct twl6030_gpadc_data {TYPE_1__* pdata; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int (* channel_to_reg ) (int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int FUNC4 (struct twl6030_gpadc_data*,int,int) ; 
 int FUNC5 (int,int*) ; 

__attribute__((used)) static int FUNC6(struct twl6030_gpadc_data *gpadc,
		int channel, int *res)
{
	u8 reg = gpadc->pdata->channel_to_reg(channel);
	__le16 val;
	int raw_code;
	int ret;

	ret = FUNC5(reg, (u8 *)&val);
	if (ret) {
		FUNC0(gpadc->dev, "unable to read register 0x%X\n", reg);
		return ret;
	}

	raw_code = FUNC1(val);
	FUNC0(gpadc->dev, "GPADC raw code: %d", raw_code);

	if (FUNC3(gpadc->pdata, channel))
		*res = FUNC4(gpadc, channel, raw_code);
	else
		*res = raw_code;

	return ret;
}
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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct amc6821_data {int stat1; int stat2; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int index; } ;

/* Variables and functions */
 int AMC6821_STAT1_LTH ; 
 int AMC6821_STAT1_LTL ; 
 int AMC6821_STAT1_RTH ; 
 int AMC6821_STAT1_RTL ; 
 int AMC6821_STAT2_LTC ; 
 int AMC6821_STAT2_RTC ; 
 int /*<<< orphan*/  EINVAL ; 
#define  IDX_TEMP1_CRIT 133 
#define  IDX_TEMP1_MAX 132 
#define  IDX_TEMP1_MIN 131 
#define  IDX_TEMP2_CRIT 130 
#define  IDX_TEMP2_MAX 129 
#define  IDX_TEMP2_MIN 128 
 struct amc6821_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 TYPE_1__* FUNC3 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
			       struct device_attribute *devattr, char *buf)
{
	struct amc6821_data *data = FUNC0(dev);
	int ix = FUNC3(devattr)->index;
	u8 flag;

	switch (ix) {
	case IDX_TEMP1_MIN:
		flag = data->stat1 & AMC6821_STAT1_LTL;
		break;
	case IDX_TEMP1_MAX:
		flag = data->stat1 & AMC6821_STAT1_LTH;
		break;
	case IDX_TEMP1_CRIT:
		flag = data->stat2 & AMC6821_STAT2_LTC;
		break;
	case IDX_TEMP2_MIN:
		flag = data->stat1 & AMC6821_STAT1_RTL;
		break;
	case IDX_TEMP2_MAX:
		flag = data->stat1 & AMC6821_STAT1_RTH;
		break;
	case IDX_TEMP2_CRIT:
		flag = data->stat2 & AMC6821_STAT2_RTC;
		break;
	default:
		FUNC1(dev, "Unknown attr->index (%d).\n", ix);
		return -EINVAL;
	}
	if (flag)
		return FUNC2(buf, "1");
	else
		return FUNC2(buf, "0");
}
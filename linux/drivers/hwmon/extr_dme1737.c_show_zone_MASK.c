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
struct sensor_device_attribute_2 {int index; int nr; } ;
struct dme1737_data {int config2; int /*<<< orphan*/ * zone_abs; int /*<<< orphan*/ * pwm_freq; int /*<<< orphan*/ * zone_low; int /*<<< orphan*/ * zone_hyst; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  SYS_ZONE_AUTO_CHANNELS_TEMP 132 
#define  SYS_ZONE_AUTO_POINT1_TEMP 131 
#define  SYS_ZONE_AUTO_POINT1_TEMP_HYST 130 
#define  SYS_ZONE_AUTO_POINT2_TEMP 129 
#define  SYS_ZONE_AUTO_POINT3_TEMP 128 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int) ; 
 struct dme1737_data* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC6 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct dme1737_data *data = FUNC4(dev);
	struct sensor_device_attribute_2
		*sensor_attr_2 = FUNC6(attr);
	int ix = sensor_attr_2->index;
	int fn = sensor_attr_2->nr;
	int res;

	switch (fn) {
	case SYS_ZONE_AUTO_CHANNELS_TEMP:
		/* check config2 for non-standard temp-to-zone mapping */
		if ((ix == 1) && (data->config2 & 0x02))
			res = 4;
		else
			res = 1 << ix;
		break;
	case SYS_ZONE_AUTO_POINT1_TEMP_HYST:
		res = FUNC0(data->zone_low[ix], 8) -
		      FUNC1(data->zone_hyst[ix == 2], ix);
		break;
	case SYS_ZONE_AUTO_POINT1_TEMP:
		res = FUNC0(data->zone_low[ix], 8);
		break;
	case SYS_ZONE_AUTO_POINT2_TEMP:
		/* pwm_freq holds the temp range bits in the upper nibble */
		res = FUNC0(data->zone_low[ix], 8) +
		      FUNC2(data->pwm_freq[ix]);
		break;
	case SYS_ZONE_AUTO_POINT3_TEMP:
		res = FUNC0(data->zone_abs[ix], 8);
		break;
	default:
		res = 0;
		FUNC3(dev, "Unknown function %d.\n", fn);
	}

	return FUNC5(buf, "%d\n", res);
}
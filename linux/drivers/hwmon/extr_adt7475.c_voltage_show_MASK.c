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
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7475_data {int alarms; unsigned short** voltage; int /*<<< orphan*/  bypass_attn; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
#define  ALARM 128 
 scalar_t__ FUNC0 (struct adt7475_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct adt7475_data*) ; 
 struct adt7475_data* FUNC2 (struct device*) ; 
 int FUNC3 (size_t,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 struct sensor_device_attribute_2* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev, struct device_attribute *attr,
			    char *buf)
{
	struct adt7475_data *data = FUNC2(dev);
	struct sensor_device_attribute_2 *sattr = FUNC5(attr);
	unsigned short val;

	if (FUNC0(data))
		return FUNC1(data);

	switch (sattr->nr) {
	case ALARM:
		return FUNC4(buf, "%d\n",
			       (data->alarms >> sattr->index) & 1);
	default:
		val = data->voltage[sattr->nr][sattr->index];
		return FUNC4(buf, "%d\n",
			       FUNC3(sattr->index, val, data->bypass_attn));
	}
}
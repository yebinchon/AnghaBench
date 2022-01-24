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
struct sensor_device_attribute {size_t index; } ;
struct s3c_hwmon_pdata {struct s3c_hwmon_chcfg** in; } ;
struct s3c_hwmon_chcfg {int mult; int /*<<< orphan*/  div; } ;
struct s3c_hwmon {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct s3c_hwmon* FUNC1 (struct device*) ; 
 struct s3c_hwmon_pdata* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,struct s3c_hwmon*,size_t) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct sensor_device_attribute* FUNC5 (struct device_attribute*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
				 struct device_attribute *attr,
				 char *buf)
{
	struct sensor_device_attribute *sen_attr = FUNC5(attr);
	struct s3c_hwmon *hwmon = FUNC1(dev);
	struct s3c_hwmon_pdata *pdata = FUNC2(dev);
	struct s3c_hwmon_chcfg *cfg;
	int ret;

	cfg = pdata->in[sen_attr->index];

	ret = FUNC3(dev, hwmon, sen_attr->index);
	if (ret < 0)
		return ret;

	ret *= cfg->mult;
	ret = FUNC0(ret, cfg->div);

	return FUNC4(buf, PAGE_SIZE, "%d\n", ret);
}